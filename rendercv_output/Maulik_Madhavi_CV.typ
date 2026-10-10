// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Maulik Madhavi",
  title: "Maulik Madhavi - CV",
  footer: context { [#emph[Maulik Madhavi -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Oct 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 10,
    day: 10,
  ),
)


= Maulik Madhavi

#connections(
  [#connection-with-icon("location-dot")[Singapore]],
  [#link("mailto:maulikmadhavi@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[maulikmadhavi\@gmail.com]]],
  [#link("tel:+65-8544-3713", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[8544 3713]]],
  [#link("https://linkedin.com/in/https://www.linkedin.com/in/maulik-madhavi-25743b82/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[https:\/\/www.linkedin.com\/in\/maulik-madhavi-25743b82\/]]],
  [#link("https://github.com/https://github.com/maulikmadhavi", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[https:\/\/github.com\/maulikmadhavi]]],
)


== Experience

#regular-entry(
  [
    #strong[NCS Pte Ltd, Singapore], Senior AI Engineer

    - Contributed to KAI Create and #link("https://www.ncs.co/en-sg/knowledge-centre/articles/ncs-kai-video-search-and-summarisation-platform/")[KAI SnS], building and optimizing computer-vision and backend components for low-code video analytics and search\/summarization workflows.

    - Designed and implemented a million-scale face indexing system and person\/vehicle detection pipelines with attribute recognition.

    - Built a prompt studio for efficient video search, summarization, and analysis, working across product, engineering, and research teams.

    - Fine-tuned open-weight LLMs (Mistral-7B, Llama-2-7B) and VLMs (Qwen3-VL, Moondream) with LoRA\/SFT on internal Alpaca-style instruction datasets.

    - Optimized vLLM serving for high-throughput video description generation, producing summaries for 48 concurrent 10-second chunks in \~7 seconds on a single H100 GPU.

    - Optimized computer-vision models for edge and on-prem deployment through quantization, pruning, and distillation using ONNX Runtime, TensorRT, and OpenVINO.

    - Developed an agentic AI workflow for autonomous computer-vision model training across planning, data collection, annotation, training, and evaluation.

  ],
  [
    Apr 2021 – present

    

    5 years 7 months

  ],
)

#regular-entry(
  [
    #strong[National University of Singapore (NUS), Singapore], Research Fellow

    - Designed and deployed a backend dialogue system for autonomous vehicles supporting multimodal conversations (FAQ, intent-driven, and open-domain) using Google Search API and Wikipedia.

    - Developed a text-dependent speaker verification system optimized for mobile deployment.

    - Improved ASR for healthcare by adapting language models to Singaporean English, yielding significant WER reductions.

    - Built an automated form-filling system for SCDF call centers using NLU to extract actionable information from ASR transcripts.

    - Mentored and co-supervised undergraduate and graduate students on research projects.

  ],
  [
    Dec 2017 – Apr 2021

    

    3 years 5 months

  ],
)

#regular-entry(
  [
    #strong[Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar], Project Personnel

    - Prosodically guided phonetic engine development for Gujarati and Marathi languages (Advisor: Prof. Hemant Patil)

    - Developed a phonetic engine for IPA transcription, syllabification, and prosodic analysis across read, spontaneous, and lecture speech from multiple dialectal regions.

    - Designed the end-to-end phonetic engine workflow using HMM-based phoneme recognition, spectral analysis for syllable segmentation, and source-characteristic analysis for suprasegmental and acoustic modeling.

    - Built an audio search pipeline leveraging the phonetic engine for spoken-content retrieval and discovery in Indian language processing.

    - Explored query-by-audio alignment techniques to improve representation and matching for spoken-content retrieval, laying the foundation for Ph.D. research.

  ],
  [
    Apr 2012 – June 2014

    

    2 years 3 months

  ],
)

== Education

#education-entry(
  [
    #strong[Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar], Information and Communication Technology (ICT)

    - Ph.D. in Information and Communication Technology (ICT)

    - CPI: 9.75\/10

    - Thesis: #link("https://ir.daiict.ac.in/server/api/core/bitstreams/7bdf3d9e-87e8-4823-9fdb-31e71cf60203/content")[Design of QbE-STD System: Audio Representation and Matching Perspective]

  ],
  [
    July 2011 – Nov 2017

  ],
  degree-column: [
    #strong[Ph.D.]
  ],
)

#education-entry(
  [
    #strong[Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar], Information and Communication Technology (ICT)

    - Master of Technology (M.Tech) in Information and Communication Technology (ICT)

    - Communication Systems specialization

    - CPI: 8.26\/10

    - Thesis: Person Recognition from Their Hum

  ],
  [
    July 2009 – June 2011

  ],
  degree-column: [
    #strong[M.Tech]
  ],
)

#education-entry(
  [
    #strong[V.V.P. Engineering College, Saurashtra University, Rajkot], Electronics and Communication (EC)

    - Bachelor of Engineering (B.E.) in Electronics and Communication (EC)

    - Percentage: 69.73\% (aggregate)

  ],
  [
    July 2005 – June 2009

  ],
  degree-column: [
    #strong[B.E.]
  ],
)

== Publications

#regular-entry(
  [
    #strong[Vocal Tract Length Normalization using a Gaussian mixture model framework for query-by-example spoken term detection]

    M. C. Madhavi, H. A. Patil

    #link("https://doi.org/10.1016/j.csl.2019.03.005")[10.1016\/j.csl.2019.03.005] (Computer, Speech and Language, Elsevier, vol. 58, pp. 175-202)

  ],
  [
    Nov 2019

  ],
)

#regular-entry(
  [
    #strong[Design of mixture of GMMs for query-by-example spoken term detection]

    M. C. Madhavi, H. A. Patil

    #link("https://doi.org/10.1016/j.csl.2018.04.006")[10.1016\/j.csl.2018.04.006] (Computer, Speech and Language, Elsevier, vol. 52, pp. 41-55)

  ],
  [
    Nov 2018

  ],
)

#regular-entry(
  [
    #strong[Combining evidences from magnitude and phase information using VTEO for person recognition using humming]

    H. A. Patil, M. C. Madhavi

    #link("https://doi.org/10.1016/j.csl.2018.04.006")[10.1016\/j.csl.2018.04.006] (Computer Speech and Language, Elsevier, vol. 52, pp. 225-256)

  ],
  [
    Nov 2018

  ],
)

#regular-entry(
  [
    #strong[Partial matching and search space reduction for QbE-STD]

    M. C. Madhavi, H. A. Patil

    #link("https://doi.org/10.1016/j.csl.2018.04.006")[10.1016\/j.csl.2018.04.006] (Computer, Speech & Language, Elsevier, vol. 45, pp. 58-82)

  ],
  [
    Sep 2017

  ],
)

#regular-entry(
  [
    #strong[Static and dynamic information derived from source and system features for person recognition from humming]

    H. A. Patil, M. C. Madhavi, K. K. Parhi

    #link("https://doi.org/10.1007/s10772-012-9161-5")[10.1007\/s10772-012-9161-5] (Int. Journal of Speech Technology, Springer, vol. 15, no. 3, pp. 393-406)

  ],
  [
    Sep 2012

  ],
)

#regular-entry(
  [
    #strong[Knowledge Distillation from BERT Transformer to Speech Transformer for Intent Classification]

    Y. Jiang, B. Sharma, M. Madhavi, H. Li

    #link("https://doi.org/10.21437/Interspeech.2021-402")[10.21437\/Interspeech.2021-402] (Interspeech, Brno, Czech Republic, pp. 4713-4717)

  ],
  [
    Aug-Sep 2021

  ],
)

#regular-entry(
  [
    #strong[Diagnosis of COVID-19 using Auditory Acoustic Cues]

    R. Das, M. Madhavi, H. Li

    #link("https://doi.org/10.21437/Interspeech.2021-497")[10.21437\/Interspeech.2021-497] (Interspeech, Brno, Czech Republic, pp. 921-925)

  ],
  [
    Aug-Sep 2021

  ],
)

#regular-entry(
  [
    #strong[Speaker-Utterance Dual Attention for Speaker and Utterance Verification]

    T. Liu, R. Das, M. Madhavi, S. Shen, H. Li

    #link("https://doi.org/10.21437/Interspeech.2020-2656")[10.21437\/Interspeech.2020-2656] (Interspeech, Shanghai, China, pp. 4293-4297)

  ],
  [
    Oct 2020

  ],
)

#regular-entry(
  [
    #strong[Multi-target DoA estimation with an audio-visual fusion mechanism]

    X. Qian, M. Madhavi, Z. Pan, J. Wang, H. Li

    #link("https://doi.org/10.1109/ICASSP39728.2021.9413776")[10.1109\/ICASSP39728.2021.9413776] (IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), Toronto, Canada, pp. 4280-4284)

  ],
  [
    Jun 2021

  ],
)

#regular-entry(
  [
    #strong[Leveraging Acoustic and Linguistic Embeddings from Pretrained Speech and Language Models for Intent Classification]

    B. Sharma, M. Madhavi, H. Li

    #link("https://doi.org/10.1109/ICASSP46034.2021.9413388")[10.1109\/ICASSP46034.2021.9413388] (IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), Toronto, Canada, pp. 7498-7502)

  ],
  [
    Jun 2021

  ],
)

== Awards

#strong[IAPR Travel Scholarship:] International Association for Pattern Recognition Travel Scholarship for presenting a paper at the International Conference on Biometrics (ICB 2012), Delhi, India. Paper: Significance of Magnitude and Phase Information via VTEO for Humming-Based Biometrics. (Grant reference: IAPR009)

#strong[GATE 2009 Qualification:] Qualified in Electronics and Communication Engineering with All India Rank 2142

== Invited Talks

#strong[Doctoral Consortium Talk:] Design of QbE-STD System: Audio Representation and Matching Perspective at Summer School on Speech Signal Processing, DA-IICT, Gandhinagar

#strong[Overview of Query-by-Example Spoken Term Detection:] Talk at ISCA supported Summer School on Advances in Speech and Audio Processing (ASAP), DA-IICT, Gandhinagar

#strong[Query-by-Example Spoken Term Detection - A template matching approach:] 5-minute Ph.D. competition at the ISCA-supported Summer School on Speech Signal Processing (S4P), DA-IICT, Gandhinagar

== Professional Activities

#strong[Conference Reviewer:] INTERSPEECH (2018-2026), ICASSP (2021, 2023-2026), APSIPA 2018, IALP (2019-2023, 2025-26), ISCSLP 2024, Computer Speech and Language, Speech Communication (Elsevier), IEEE Access

== Technologies

#strong[Research Areas:] Speech signal processing, voice search, speaker verification, spoken language understanding, deep learning for spoken language processing, million-scale indexing

#strong[Programming Languages:] Bash, C\/C++, Python, JavaScript, MATLAB

#strong[Deep Learning & ML Frameworks:] TensorFlow, PyTorch, OpenCV, scikit-learn, Hugging Face Transformers, NumPy, Pandas, Matplotlib

#strong[Large Language Models & AI Tools:] LangChain, LlamaIndex, DSPy, vLLM, RASA, n8n, Agentic Harness (Claude Code, OpenCode, Copilot, #link("https://github.com/maulikmadhavi/make_my_harness")[make\_my\_harness])

#strong[LLM\/VLM Fine-tuning & Serving:] LoRA\/SFT fine-tuning (Mistral-7B, Llama-2-7B), vision-language model tuning (Gemma, Moondream, BLIP, CLIP), high-throughput vLLM serving (PagedAttention, continuous batching, KV cache)

#strong[Model Optimization & Edge Deployment:] Quantization (INT8\/INT4), pruning, knowledge distillation, ONNX Runtime, TensorRT, OpenVINO, model export (ONNX\/TorchScript)

#strong[Web & API Frameworks:] Flask, FastAPI, Streamlit, Gradio

#strong[Audio\/Speech Tools & Systems:] Kaldi, wakeup-word detection, voice activity detection

#strong[DevOps & Deployment:] Git, Docker, Kubernetes

#strong[Operating Systems:] Windows and Linux
