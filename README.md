# Introduction

This repository contains the RenderCV source files for Maulik Madhavi's resume. 

# Build and check

-   Install the Pixi environment:
    ```powershell
    pixi install
    ```

- Render the full CV and check it for ATS compatibility:

    ```powershell
    pixi run python -m rendercv render Maulik_C._Madhavi_CV.yaml
    pixi run python ats_checker.py Maulik_C._Madhavi_CV.yaml rendercv_output/Maulik_Madhavi_CV.pdf
    ```

- Render the brief variant and check it for ATS compatibility:

    ```powershell
    pixi run python -m rendercv render Maulik_Madhavi_CV_Brief.yaml -o rendercv_output_brief
    pixi run python ats_checker.py Maulik_Madhavi_CV_Brief.yaml rendercv_output_brief/Maulik_Madhavi_CV.pdf
    ```

- ATS Compatibility Checker:  `ats_checker.py` extracts text from the PDF the
way an ATS would and compares it with the YAML source.
