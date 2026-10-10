# MyResume

This repository contains the RenderCV source files for Maulik Madhavi's resume.
Each YAML file can be rendered to PDF, Markdown, HTML, and Typst formats.

## Compile

Install the Pixi environment, then render the full CV:

```powershell
pixi install
pixi run python -m rendercv render Maulik_C._Madhavi_CV.yaml
```

Render the brief variant into its separate output directory:

```powershell
pixi run python -m rendercv render Maulik_Madhavi_CV_Brief.yaml -o rendercv_output_brief
```

## ATS compatibility check

The generated Markdown file provides a plain-text representation that can be
reviewed for ATS compatibility:

```powershell
pixi run python -m rendercv render Maulik_C._Madhavi_CV.yaml
```

After rendering, review
`rendercv_output/Maulik_Madhavi_CV.md` and verify that:

- All section headings and bullet points are present.
- Contact details and links appear as selectable text.
- Important keywords are written as normal text rather than embedded in images.
- The generated PDF contains the same content and has a logical reading order.

The GitHub Actions workflow runs the RenderCV generation for all CV variants.