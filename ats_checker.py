#!/usr/bin/env python3
"""ATS compliance check for a RenderCV-rendered PDF.

Extracts the PDF text the way an applicant tracking system would and verifies
it against the YAML source. Exits 1 if any check fails.

Usage: python ats_checker.py <cv.yaml> <rendered.pdf>
"""

import os
import re
import sys
import unicodedata

from pypdf import PdfReader
from ruamel.yaml import YAML

# Entry fields RenderCV prints in the classic theme (dates/locations/urls excluded)
TEXT_FIELDS = ("company", "position", "institution", "degree", "area", "name",
               "title", "journal", "label", "details", "bullet", "summary")
REQUIRED_HEADINGS = ("experience", "education", "skills")
GITHUB = os.environ.get("GITHUB_ACTIONS") == "true"


def norm(s):
    """Lowercase alphanumerics only, so line breaks and punctuation don't matter."""
    return re.sub(r"[^a-z0-9]", "", unicodedata.normalize("NFKC", s).lower())


def strip_markdown(s):
    return re.sub(r"\[([^\]]*)\]\([^)]*\)", r"\1", str(s))


def source_items(cv):
    """Yield (section, text) for every piece of printed text in the YAML."""
    for section, entries in cv["sections"].items():
        for entry in entries:
            if isinstance(entry, str):
                yield section, strip_markdown(entry)
                continue
            for field in TEXT_FIELDS:
                if field in entry:
                    yield section, strip_markdown(entry[field])
            for highlight in entry.get("highlights", []):
                yield section, strip_markdown(highlight)


def check(yaml_path, pdf_path):
    cv = YAML(typ="safe").load(open(yaml_path, encoding="utf-8"))["cv"]
    reader = PdfReader(pdf_path)
    pages = [page.extract_text() or "" for page in reader.pages]
    text = "\n".join(pages)
    full, page1 = norm(text), norm(pages[0])
    errors, warnings = [], []

    if not full:
        return ["No extractable text in PDF"], warnings

    # Contact details must be readable on page 1
    if norm(cv["name"]) not in page1:
        errors.append(f"Name '{cv['name']}' not found on page 1")
    if cv.get("email") and cv["email"].lower() not in pages[0].lower():
        errors.append(f"Email '{cv['email']}' not found on page 1")
    if cv.get("phone"):
        digits = re.sub(r"\D", "", cv["phone"])
        compact = re.sub(r"[\s\-().]", "", pages[0])
        if ("+" + digits) not in compact:
            errors.append(f"Phone '+{digits}' (with country code) not found on page 1")
    for network in cv.get("social_networks", []):
        if norm(network["username"]) not in page1:
            errors.append(f"{network['network']} link not found on page 1")

    # Junk glyphs (icon fonts, unmapped characters) that ATS shows as garbage
    junk = sorted({c for c in text if c == "�" or unicodedata.category(c) in ("Co", "Cs")
                   or (unicodedata.category(c) == "Cc" and c not in "\n\t")})
    if junk:
        errors.append("Unreadable characters in text: "
                      + ", ".join(f"U+{ord(c):04X}" for c in junk)
                      + " (icon glyphs? set design.header.connections.show_icons: false)")

    # Section headings must be extractable, in source order (catches column/reading-order issues)
    titles = [norm(key) for key in cv["sections"]]
    found = [norm(line) for line in text.splitlines() if norm(line) in titles]
    found = list(dict.fromkeys(found))
    if found != titles:
        errors.append(f"Section headings out of order or missing: expected {titles}, got {found}")
    for required in REQUIRED_HEADINGS:
        if not any(required in title for title in titles):
            warnings.append(f"No standard '{required.title()}' heading; ATS may not classify that content")

    # Every printed source item must appear in the extracted text
    items = list(source_items(cv))
    missing = [(section, item) for section, item in items if norm(item) not in full]
    for section, item in missing:
        errors.append(f"[{section}] not found in PDF text: {item[:80]}")

    # Words split by line-end hyphenation break keyword matching
    source_text = " ".join(item for _, item in items).lower()
    source_words = set(re.findall(r"[a-z0-9]+", source_text))
    split = sorted({(a + b).lower() for a, b in re.findall(r"([A-Za-z]+) ?-\s*\n\s*([A-Za-z]+)", text)
                    if (a + b).lower() in source_words and f"{a}-{b}".lower() not in source_text})
    if split:
        errors.append(f"Hyphenation splits {len(split)} words across lines: {', '.join(split)} "
                      "(set design.typography.alignment: justified-with-no-hyphenation)")

    if any(page.images for page in reader.pages):
        warnings.append("PDF contains images; any text inside them is invisible to ATS")

    print(f"{pdf_path}: {len(pages)} pages, {len(full)} chars, "
          f"{len(items) - len(missing)}/{len(items)} source items found")
    return errors, warnings


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    errors, warnings = check(sys.argv[1], sys.argv[2])
    for msg in warnings:
        print(f"::warning::{msg}" if GITHUB else f"WARN  {msg}")
    for msg in errors:
        print(f"::error::{msg}" if GITHUB else f"FAIL  {msg}")
    print(f"ATS check {'FAILED' if errors else 'passed'}: "
          f"{len(errors)} errors, {len(warnings)} warnings")
    sys.exit(1 if errors else 0)


if __name__ == "__main__":
    main()
