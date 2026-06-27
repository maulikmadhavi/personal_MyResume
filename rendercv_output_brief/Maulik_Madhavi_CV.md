# <<cv.name>>'s CV

((* if cv.phone *))
- Phone: <<cv.phone|replace("tel:", "")|replace("-"," ")>>
((* endif *))
((* if cv.email *))
- Email: [<<cv.email>>](mailto:<<cv.email>>)
((* endif *))
((* if cv.location *))
- Location: <<cv.location>>
((* endif *))
((* if cv.website *))
- Website: [<<cv.website|replace("https://","")|replace("/","")>>](<<cv.website>>)
((* endif *))
((* if cv.social_networks *))
    ((* for network in cv.social_networks *))
- <<network.network>>: [<<network.username>>](<<network.url>>)
    ((* endfor *))
((* endif *))

# <<section_title>>
## **NCS Pte Ltd, Singapore**, Senior AI Engineer

Apr 2021 – present



5 years 3 months

- Contributed to two major platforms under KAI CoCreate: KAI Create (Low-code video analytics training tool) and [KAI SnS](https://www.ncs.co/en-sg/knowledge-centre/articles/ncs-kai-video-search-and-summarisation-platform/) (Video search and summarization platform: ) through computer vision and backend optimization

- Designed and implemented face indexing system supporting million-scale face search capabilities, along with person and vehicle detection models with attribute recognition

- Built prompt studio platform enabling users to efficiently search, summarize, and analyze video content for downstream applications, collaborating across cross-functional teams

- Fine-tuned open-weight LLMs (Mistral-7B, Llama-2-7B) using LoRA-based supervised fine-tuning (SFT) on custom Alpaca-format instruction datasets curated from internal data

- Optimized high-throughput VLM serving with vLLM (PagedAttention, continuous batching), generating descriptions for 48 concurrent 10-second video chunks in ~7 seconds on a single H100 GPU

- Optimized computer-vision recognition and detection models for edge and on-prem deployment using quantization, pruning, and distillation with ONNX Runtime, TensorRT, OpenVINO, and TFLite



## **National University of Singapore (NUS), Singapore**, Research Fellow

Dec 2017 – Apr 2021



3 years 5 months

- Designed and deployed backend dialogue system for autonomous vehicles supporting multi-modal conversations (FAQ-based, intention-driven, and open-domain) leveraging Google Search API and Wikipedia

- Developed text-dependent speaker verification system optimized for mobile deployment

- Enhanced Automatic Speech Recognition (ASR) system for healthcare applications by adapting language models to Singaporean English, achieving significant Word Error Rate (WER) improvements

- Built automated form-filling system for SCDF call centers using NLU techniques to extract actionable information from ASR-generated transcripts

- Mentored and co-supervised undergraduate and graduate students on research projects



## **Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar**, Project Personnel

Apr 2012 – June 2014



2 years 3 months

- Prosodically Guided Phonetic Engine Development for Gujarati and Marathi languages (Advisor: Prof. Hemant Patil)

- Developed sophisticated phonetic engine capturing phonetic transcription (IPA), syllabification, and prosodic information (pitch and break marking) across multiple recording modes (read, spontaneous, lecture) from different dialectal regions

- Designed and implemented phonetic engine development workflow using Hidden Markov Models for phoneme recognition, spectral analysis for syllable segmentation, and source characteristic analysis for suprasegmental feature extraction and acoustic modeling

- Built audio search pipeline leveraging the phonetic engine architecture to enable spoken content retrieval and discovery applications for Indian language processing



# <<section_title>>
## **Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar**, Information and Communication Technology (ICT)

**Ph.D.**


July 2011 – Nov 2017

- Ph.D. in Information and Communication Technology (ICT)

- CPI: 9.75/10

- Thesis: [Design of QbE-STD System : audio representation and matching perspective](https://ir.daiict.ac.in/server/api/core/bitstreams/7bdf3d9e-87e8-4823-9fdb-31e71cf60203/content)



## **Dhirubhai Ambani Institute of Information and Communication Technology (DA-IICT), Gandhinagar**, Information and Communication Technology (ICT)

**M.Tech**


July 2009 – June 2011

- Master of Technology (M.Tech) in Information and Communication Technology (ICT)

- Communication Systems specialization

- CPI: 8.26/10

- Thesis: Person recognition from their hum



## **V.V.P. Engineering College, Saurashtra University, Rajkot**, Electronics and Communication (EC)

**B.E.**


July 2005 – June 2009

- Bachelor of Engineering (B.E.) in Electronics and Communication (EC)

- Percentage: 69.73% (aggregate)



# <<section_title>>
## **Vocal Tract Length Normalization using a Gaussian mixture model framework for query-by-example spoken term detection**

Nov 2019

M. C. Madhavi, H. A. Patil

[10.1016/j.csl.2019.03.005](https://doi.org/10.1016/j.csl.2019.03.005) (Computer, Speech and Language, Elsevier, vol. 58, pp. 175-202)



## **Design of mixture of GMMs for query-by-example spoken term detection**

Nov 2018

M. C. Madhavi, H. A. Patil

[10.1016/j.csl.2018.04.006](https://doi.org/10.1016/j.csl.2018.04.006) (Computer, Speech and Language, Elsevier, vol. 52, pp. 41-55)



## **Combining evidences from magnitude and phase information using VTEO for person recognition using humming**

Nov 2018

H. A. Patil, M. C. Madhavi

[10.1016/j.csl.2018.04.006](https://doi.org/10.1016/j.csl.2018.04.006) (Computer Speech and Language, Elsevier, vol. 52, pp. 225-256)



## **Partial matching and search space reduction for QbE-STD**

Sept 2017

M. C. Madhavi, H. A. Patil

[10.1016/j.csl.2018.04.006](https://doi.org/10.1016/j.csl.2018.04.006) (Computer, Speech & Language, Elsevier, vol. 45, pp. 58-82)



## **Static and dynamic information derived from source and system features for person recognition from humming**

Sept 2012

H. A. Patil, M. C. Madhavi, K. K. Parhi

[10.1007/s10772-012-9161-5](https://doi.org/10.1007/s10772-012-9161-5) (Int. Journal of Speech Technology, Springer, vol. 15, no. 3, pp. 393-406)



## **Knowledge Distillation from BERT Transformer to Speech Transformer for Intent Classification**

Aug-Sept 2021

Y. Jiang, B. Sharma, M. Madhavi, H. Li

[10.21437/Interspeech.2021-402](https://doi.org/10.21437/Interspeech.2021-402) (Interspeech, Brno, Czech Republic, pp. 4713-4717)



## **Diagnosis of COVID-19 using Auditory Acoustic Cues**

Aug-Sept 2021

R. Das, M. Madhavi, H. Li

[10.21437/Interspeech.2021-497](https://doi.org/10.21437/Interspeech.2021-497) (Interspeech, Brno, Czech Republic, pp. 921-925)



## **Speaker-Utterance Dual Attention for Speaker and Utterance Verification**

Oct 2020

T. Liu, R. Das, M. Madhavi, S. Shen, H. Li

[10.21437/Interspeech.2020-2656](https://doi.org/10.21437/Interspeech.2020-2656) (Interspeech, Shanghai, China, pp. 4293-4297)



## **Multi-target DoA estimation with an audio-visual fusion mechanism**

Jun 2021

X. Qian, M. Madhavi, Z. Pan, J. Wang, H. Li

[10.1109/ICASSP39728.2021.9413776](https://doi.org/10.1109/ICASSP39728.2021.9413776) (IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), Toronto, Canada, pp. 4280-4284)



## **Leveraging Acoustic and Linguistic Embeddings from Pretrained Speech and Language Models for Intent Classification**

Jun 2021

B. Sharma, M. Madhavi, H. Li

[10.1109/ICASSP46034.2021.9413388](https://doi.org/10.1109/ICASSP46034.2021.9413388) (IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP), Toronto, Canada, pp. 7498-7502)



# <<section_title>>
**IAPR Travel Scholarship:** International Association for Pattern Recognition Travel Scholarship for presenting paper in International Conference on Biometrics, ICB 2012, Delhi, India. Paper: Significance of Magnitude and Phase Information via VTEO for Humming Based Biometrics. (Grant reference: IAPR009)

**GATE 2009 Qualification:** Qualified in Electronics and Communication Engineering with All India Rank 2142

# <<section_title>>
**Doctoral Consortium Talk:** Design of QbE-STD System: Audio Representation and Matching Perspective at Summer School on Speech Signal Processing, DA-IICT, Gandhinagar

**Overview of Query-by-Example Spoken Term Detection:** Talk at ISCA supported Summer School on Advances in Speech and Audio Processing (ASAP), DA-IICT, Gandhinagar

**Query-by-Example Spoken Term Detection - A template matching approach:** 5 min Ph.D. competition at ISCA supported summer School on Speech Signal Processing (S4P), DA-IICT, Gandhinagar

# <<section_title>>
**Conference Reviewer:** INTERSPEECH (2018-2021), ICASSP 2021, APSIPA 2018, IALP (2019-2020), Computer Speech Language, Speech Communication (Elsevier), IEEE Access

# <<section_title>>
**Research Areas:** Speech signal processing, voice search, speaker verification, spoken language understanding, deep learning for spoken language processing, million-scale indexing

**Programming Languages:** Bash, C/C++, Python, JavaScript, MATLAB

**Deep Learning & ML Frameworks:** TensorFlow, PyTorch, OpenCV, scikit-learn, Hugging Face Transformers, NumPy, Pandas, Matplotlib

**Large Language Models & AI Tools:** LangChain, LlamaIndex, DSPy, vLLM, RASA, n8n

**LLM/VLM Fine-tuning & Serving:** LoRA/SFT fine-tuning (Mistral-7B, Llama-2-7B), vision-language model tuning (Gemma, moondream, BLIP, CLIP), high-throughput vLLM serving (PagedAttention, continuous batching, KV-cache)

**Model Optimization & Edge Deployment:** Quantization (INT8/INT4), pruning, knowledge distillation, ONNX Runtime, TensorRT, OpenVINO, TFLite, model export (ONNX/TorchScript)

**Web & API Frameworks:** Flask, FastAPI, Streamlit, Gradio

**Audio/Speech Tools & Systems:** Kaldi, wakeup-word detection, voice activity detection

**DevOps & Deployment:** Git, Docker, Kubernetes

**Operating Systems:** Windows and Linux
