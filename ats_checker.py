#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Local ATS Resume Checker - Analyzes resume for ATS compatibility
No data is sent to third parties
"""

import sys
import re
import io
from pathlib import Path
from typing import List, Tuple

# Fix encoding for Windows
if sys.platform == 'win32':
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

class ATSChecker:
    def __init__(self):
        self.issues = []
        self.warnings = []
        self.passed = []

    def check_latex_file(self, filepath: str):
        """Check LaTeX source file for ATS issues"""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()

        print(f"\n📋 Analyzing: {filepath}\n")

        # Check 1: Problematic LaTeX packages
        problematic_packages = [
            r'\\usepackage\{tikz\}',
            r'\\usepackage\{pstricks\}',
            r'\\usepackage\{xcolor\}',
            r'\\usepackage\{soul\}',  # highlighting
            r'\\usepackage\{fancyhdr\}',  # fancy headers
            r'\\usepackage\{multicol\}',  # multiple columns
        ]

        for pkg in problematic_packages:
            if re.search(pkg, content):
                pkg_name = pkg.split('{')[1].split('}')[0]
                self.issues.append(f"❌ Uses '{pkg_name}' package (ATS unfriendly)")

        # Check 2: Color definitions
        if re.search(r'\\definecolor|\\color|\\textcolor|\\colorbox', content):
            self.issues.append("❌ Uses colors (will be lost in ATS parsing)")

        # Check 3: Graphics/images
        if re.search(r'\\includegraphics|\\begin\{picture\}|\\begin\{tikzpicture\}', content):
            self.issues.append("❌ Contains graphics/images (ATS may skip them)")

        # Check 4: Tables (complex formatting)
        if re.search(r'\\begin\{tabular\}', content):
            self.warnings.append("⚠️  Uses tables (may not parse correctly)")

        # Check 5: Special characters that might cause issues
        problematic_chars = {
            '©': 'copyright symbol',
            '®': 'registered trademark',
            '™': 'trademark',
            '→': 'arrow',
            '•': 'bullet',
        }

        for char, desc in problematic_chars.items():
            if char in content:
                self.warnings.append(f"⚠️  Contains {desc} '{char}' (may not parse correctly)")

        # Check 6: Verify simple structure
        sections = re.findall(r'\\section\*?\{([^}]+)\}', content)
        self.passed.append(f"✓ Found {len(sections)} main sections: {', '.join(sections[:5])}")

        # Check 7: Check for list environments
        itemize_count = len(re.findall(r'\\begin\{itemize\}', content))
        enumerate_count = len(re.findall(r'\\begin\{enumerate\}', content))
        if itemize_count > 0 or enumerate_count > 0:
            self.passed.append(f"✓ Uses bullet/numbered lists ({itemize_count} itemize, {enumerate_count} enumerate)")

        # Check 8: Document class
        if re.search(r'\\documentclass\[.*\]\{article\}', content):
            self.passed.append("✓ Uses simple 'article' document class")
        else:
            self.warnings.append("⚠️  Using non-standard document class")

        # Check 9: Font commands
        if re.search(r'\\fontfamily|\\selectfont|\\usefont', content):
            self.warnings.append("⚠️  Custom font commands may not parse correctly")

        # Check 10: Margins (reasonable defaults)
        if re.search(r'margin=[0-9.]+', content):
            self.passed.append("✓ Has defined margins")

        # Check 11: Text density
        text_content = re.sub(r'\\[a-zA-Z]+\{?[^}]*\}?', '', content)
        text_content = re.sub(r'%.*', '', text_content)  # remove comments
        word_count = len(text_content.split())
        self.passed.append(f"✓ Document contains ~{word_count} words")

        # Check 12: Links
        links = re.findall(r'https?://[^\s\\}]+', content)
        if links:
            self.passed.append(f"✓ Contains {len(links)} URLs (clickable)")

    def print_report(self):
        """Print formatted ATS check report"""
        print("\n" + "="*60)
        print("ATS COMPATIBILITY REPORT")
        print("="*60)

        if self.issues:
            print(f"\n🚨 CRITICAL ISSUES ({len(self.issues)}):")
            for issue in self.issues:
                print(f"  {issue}")

        if self.warnings:
            print(f"\n⚠️  WARNINGS ({len(self.warnings)}):")
            for warning in self.warnings:
                print(f"  {warning}")

        if self.passed:
            print(f"\n✅ PASSED CHECKS ({len(self.passed)}):")
            for passed in self.passed:
                print(f"  {passed}")

        # Summary score
        print("\n" + "="*60)
        score = 100 - (len(self.issues) * 20 + len(self.warnings) * 5)
        score = max(0, min(100, score))  # Clamp 0-100

        if score >= 80:
            rating = "🟢 EXCELLENT - ATS Friendly"
        elif score >= 60:
            rating = "🟡 GOOD - Mostly ATS Friendly"
        elif score >= 40:
            rating = "🟠 FAIR - Some ATS Issues"
        else:
            rating = "🔴 POOR - Major ATS Issues"

        print(f"ATS Score: {score}/100")
        print(f"Rating: {rating}")
        print("="*60 + "\n")

        # Recommendations
        if self.issues:
            print("📝 RECOMMENDATIONS:")
            print("  1. Remove all colors and graphic elements")
            print("  2. Use simple lists instead of complex tables")
            print("  3. Stick with standard LaTeX packages (geometry, enumitem, etc.)")
            print("  4. Avoid custom font styling")
            print("  5. Keep formatting minimal and semantic\n")

def main():
    if len(sys.argv) < 2:
        print("Usage: python ats_checker.py <resume.tex>")
        print("Example: python ats_checker.py Maulik_resume.tex")
        sys.exit(1)

    filepath = sys.argv[1]

    if not Path(filepath).exists():
        print(f"Error: File not found: {filepath}")
        sys.exit(1)

    if filepath.endswith('.tex'):
        checker = ATSChecker()
        checker.check_latex_file(filepath)
        checker.print_report()
    else:
        print("Error: Only .tex files are supported currently")
        sys.exit(1)

if __name__ == '__main__':
    main()