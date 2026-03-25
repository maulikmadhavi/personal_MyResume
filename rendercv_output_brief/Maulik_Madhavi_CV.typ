// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Maulik Madhavi",
  title: "Maulik Madhavi - CV",
  footer: context { [#emph[Maulik Madhavi -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
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
    month: 3,
    day: 26,
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
    #strong[NCS Pte Ltd, Singapore], Lead Product Engineer

    - Contributed to two major platforms under KAI CoCreate: KAI Create (Low-code video analytics training tool) and #link("https://www.ncs.co/en-sg/knowledge-centre/articles/ncs-kai-video-search-and-summarisation-platform/")[KAI SnS] (Video search and summarization platform: ) through computer vision and backend optimization

    - Designed and implemented face indexing system supporting million-scale face search capabilities, along with person and vehicle detection models with attribute recognition

    - Built prompt studio platform enabling users to efficiently search, summarize, and analyze video content for downstream applications, collaborating across cross-functional teams

  ],
  [
    Apr 2021 – present

    

    5 years 1 month

  ],
)

#regular-entry(
  [
    #strong[National University of Singapore (NUS), Singapore], Research Fellow

    - Designed and deployed backend dialogue system for autonomous vehicles supporting multi-modal conversations (FAQ-based, intention-driven, and open-domain) leveraging Google Search API and Wikipedia

    - Developed text-dependent speaker verification system optimized for mobile deployment

    - Enhanced Automatic Speech Recognition (ASR) system for healthcare applications by adapting language models to Singaporean English, achieving significant Word Error Rate (WER) improvements

    - Built automated form-filling system for SCDF call centers using NLU techniques to extract actionable information from ASR-generated transcripts

    - Mentored and co-supervised undergraduate and graduate students on research projects

  ],
  [
    Dec 2017 – Apr 2021

    

    3 years 5 months

  ],
)

#regular-entry(
  [
    #strong[Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar], Project Personnel

    - Prosodically Guided Phonetic Engine Development for Gujarati and Marathi languages (Advisor: Prof. Hemant Patil)

    - Developed sophisticated phonetic engine capturing phonetic transcription (IPA), syllabification, and prosodic information (pitch and break marking) across multiple recording modes (read, spontaneous, lecture) from different dialectal regions

    - Designed and implemented phonetic engine development workflow using Hidden Markov Models for phoneme recognition, spectral analysis for syllable segmentation, and source characteristic analysis for suprasegmental feature extraction and acoustic modeling

    - Built audio search pipeline leveraging the phonetic engine architecture to enable spoken content retrieval and discovery applications for Indian language processing

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

    - Thesis: #link("https://ir.daiict.ac.in/server/api/core/bitstreams/7bdf3d9e-87e8-4823-9fdb-31e71cf60203/content")[Design of QbE-STD System : audio representation and matching perspective]

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

    - Thesis: Person recognition from their hum

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
    Sept 2017

  ],
)

#regular-entry(
  [
    #strong[Static and dynamic information derived from source and system features for person recognition from humming]

    H. A. Patil, M. C. Madhavi, K. K. Parhi

    #link("https://doi.org/10.1007/s10772-012-9161-5")[10.1007\/s10772-012-9161-5] (Int. Journal of Speech Technology, Springer, vol. 15, no. 3, pp. 393-406)

  ],
  [
    Sept 2012

  ],
)

#regular-entry(
  [
    #strong[Knowledge Distillation from BERT Transformer to Speech Transformer for Intent Classification]

    Y. Jiang, B. Sharma, M. Madhavi, H. Li

    #link("https://doi.org/10.21437/Interspeech.2021-402")[10.21437\/Interspeech.2021-402] (Interspeech, Brno, Czech Republic, pp. 4713-4717)

  ],
  [
    Aug-Sept 2021

  ],
)

#regular-entry(
  [
    #strong[Diagnosis of COVID-19 using Auditory Acoustic Cues]

    R. Das, M. Madhavi, H. Li

    #link("https://doi.org/10.21437/Interspeech.2021-497")[10.21437\/Interspeech.2021-497] (Interspeech, Brno, Czech Republic, pp. 921-925)

  ],
  [
    Aug-Sept 2021

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

#strong[IAPR Travel Scholarship:] International Association for Pattern Recognition Travel Scholarship for presenting paper in International Conference on Biometrics, ICB 2012, Delhi, India. Paper: Significance of Magnitude and Phase Information via VTEO for Humming Based Biometrics. (Grant reference: IAPR009)

#strong[GATE 2009 Qualification:] Qualified in Electronics and Communication Engineering with All India Rank 2142

== Invited Talks

#strong[Doctoral Consortium Talk:] Design of QbE-STD System: Audio Representation and Matching Perspective at Summer School on Speech Signal Processing, DA-IICT, Gandhinagar

#strong[Overview of Query-by-Example Spoken Term Detection:] Talk at ISCA supported Summer School on Advances in Speech and Audio Processing (ASAP), DA-IICT, Gandhinagar

#strong[Query-by-Example Spoken Term Detection - A template matching approach:] 5 min Ph.D. competition at ISCA supported summer School on Speech Signal Processing (S4P), DA-IICT, Gandhinagar

== Professional Activities

#strong[Conference Reviewer:] INTERSPEECH (2018-2021), ICASSP 2021, APSIPA 2018, IALP (2019-2020), Computer Speech Language, Speech Communication (Elsevier), IEEE Access

== Technologies

#strong[Research Areas:] Speech signal processing, voice search, speaker verification, spoken language understanding, deep learning for spoken language processing, million-scale indexing

#strong[Programming Languages:] Bash, C\/C++, Python, JavaScript, MATLAB

#strong[Deep Learning & ML Frameworks:] TensorFlow, PyTorch, OpenCV, scikit-learn, Hugging Face Transformers, NumPy, Pandas, Matplotlib

#strong[Large Language Models & AI Tools:] LangChain, LlamaIndex, DSPy, vLLM, RASA, n8n

#strong[Web & API Frameworks:] Flask, FastAPI, Streamlit, Gradio

#strong[Audio\/Speech Tools & Systems:] Kaldi, wakeup-word detection, voice activity detection

#strong[DevOps & Deployment:] Git, Docker, Kubernetes

#strong[Operating Systems:] Windows and Linux
