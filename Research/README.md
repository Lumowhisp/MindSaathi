# SmritiSetu — Research & Academic Index

> **Master Directory**: Central repository connecting all empirical research papers, peer-reviewed clinical studies, public benchmark datasets, and local PDF literature for the SmritiSetu Cognitive Platform.

---

## Research Folder Structure

```
Research/
├── README.md                                          #  This master navigation hub
├── SmritiSetu_Academic_Literature_Review_2021-2026.md #  Comprehensive APA 7th Literature Review
├── Research_Papers.md                                 #  Quick reference catalog of 28 papers
└── papers/                                            #  Downloaded full-text PDFs (Renamed & Indexed)
    ├── Chen2020_DeepLearning_ClockDrawing_Screening.pdf
    ├── CTC_TriAgent_GenerativeAI_Framework_2025.pdf
    ├── GamifiedAI_DigitalArt_DementiaTherapy_2025.pdf
    ├── Liu2025_VideoGames_MCI_MetaAnalysis.pdf
    └── SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf
```

---

## 1. Local Full-Text Research Papers (Downloaded PDFs)

The table below connects every downloaded paper in [`papers/`](papers) directly to its academic citation, online links, and its exact role/dataset in SmritiSetu.

| # | Paper Title & Citation | Local PDF | Online Links | Project Module & Dataset Connection |
|:---|:---|:---|:---|:---|
| **1** | **Video Games & MCI Meta-Analysis**<br>Liu, B., Li, X., & Cai, H. (2025/2026). *The effects of video games on cognitive function in older adults with mild cognitive impairment: A meta-analysis.* **Frontiers in Aging Neuroscience**, 17:1756970. | [Open PDF](papers/Liu2025_VideoGames_MCI_MetaAnalysis.pdf) | [Frontiers Full Text](https://www.frontiersin.org/journals/aging-neuroscience/articles/10.3389/fnagi.2025.1756970/full) • [PubMed: 41659698](https://pubmed.ncbi.nlm.nih.gov/41659698/) | **Cognitive Gaming Engine** ([Section 5](../SmritiSetu_Detailed_Approach.md#5-module-1-adaptive-cognitive-gaming-engine))<br>Provides clinical proof that adaptive digital gaming significantly improves global MoCA (+1.5 to +3.2 points) and executive function. |
| **2** | **Deep Learning Clock Drawing Screening**<br>Chen, S., Stromer, D., Alabdalrahim, H. A., Schwab, S., & Weih, M. (2020). *Automatic dementia screening and scoring by applying deep learning on clock-drawing tests.* **Scientific Reports (Nature)**, 10:20854. | [Open PDF](papers/Chen2020_DeepLearning_ClockDrawing_Screening.pdf) | [Nature Article](https://www.nature.com/articles/s41598-020-74710-9) • [PubMed: 33257744](https://pubmed.ncbi.nlm.nih.gov/33257744/) | **Clock Drawing Test AI Scorer** ([Section 11.3](../SmritiSetu_Detailed_Approach.md#113-pipeline-2-clock-drawing-test-ai-scorer-computer-vision))<br>Connects to [`DataSets/ClockTest/`](../DataSets/ClockTest). Proves automated CNN visuospatial MoCA scoring. |
| **3** | **Digital Clock Drawing Classification Models**<br>Souillard-Mandar, W. (2016). *Learning Classification Models of Cognitive Conditions from Subtle Behaviors in the Digital Clock Drawing Test.* **MIT Department of EECS** / Machine Learning. | [Open PDF](papers/SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf) | [MIT DSpace Record](https://dspace.mit.edu/entities/publication/4086b780-7ce5-460a-84ed-3ace0fde286e) • [PubMed: 27057085](https://pubmed.ncbi.nlm.nih.gov/27057085/) | **Visuospatial Assessment Engine**<br>Underpins feature extraction (digit spacing, circularity, stroke metrics) using NHATS clock drawings in [`DataSets/ClockTest/Round1/`](../DataSets/ClockTest/Round1). |
| **4** | **CTC Tri-Agent Generative AI Framework**<br>Li, Y., et al. (2025). *A Generative AI Framework for Cognitive Intervention in Older Adults: An Integrated Engineering Design and Clinical Protocol.* **MDPI Healthcare**, 13(24), 3225. | [Open PDF](papers/CTC_TriAgent_GenerativeAI_Framework_2025.pdf) | [MDPI Article](https://www.mdpi.com/2227-9032/13/24/3225) • [DOI: 10.3390/healthcare13243225](https://doi.org/10.3390/healthcare13243225) | **Tri-Agent System Architecture** ([Section 2.3](../SmritiSetu_Detailed_Approach.md#the-ctc-framework-2025))<br>Guides the Coach–Teacher–Companion multi-agent design, technology anxiety mitigation, and emotional safety protocols. |
| **5** | **Gamified AI & Digital Art Therapy**<br>Afonso, A., et al. (2025). *Dementia Therapy: The Role of Gamified AI and Digital Art in Supporting Cognitive and Emotional Well-being.* **Procedia Computer Science (Elsevier)**, 256, 1391–1398. | [Open PDF](papers/GamifiedAI_DigitalArt_DementiaTherapy_2025.pdf) | [ScienceDirect Link](https://www.sciencedirect.com/science/article/pii/S187705092500216X) • [ResearchGate](https://www.researchgate.net/publication/389738769_Dementia_Therapy_The_Role_of_Gamified_AI_and_Digital_Art_in_Supporting_Cognitive_and_Emotional_Well-being) | **Reminiscence & Cultural Gaming** ([Section 10](../SmritiSetu_Detailed_Approach.md#10-cultural-localization-strategy-for-ner))<br>Empirical basis for culturally localized art, traditional weaving patterns, and emotional engagement games (*Sur Sangam*, *Purani Yaadein*). |

---

## 2. Dataset-to-Paper Interconnection Matrix

How SmritiSetu's datasets link to formal research papers and project pipelines:

```
┌─────────────────────────────────┐       ┌──────────────────────────────────────┐
│  DataSets/ClockTest/ (NHATS)   │ ───▶  │  Chen et al. (2020) & Souillard (16) │
│  (Thousands of .tif drawings)   │       │  [Deep Learning Clock Drawing]       │
└─────────────────────────────────┘       └──────────────────────────────────────┘
                 │                                            │
                 ▼                                            ▼
┌─────────────────────────────────┐       ┌──────────────────────────────────────┐
│  SmritiSetu Pipeline 11.3:      │       │  DataSets/TalkBank/ (PROCESS-2)      │
│  "Bihu Chora" Visuospatial AI   │       │  Spoken Dialogue Dementia Corpus     │
└─────────────────────────────────┘       └──────────────────────────────────────┘
                 │                                            │
                 ▼                                            ▼
┌─────────────────────────────────┐       ┌──────────────────────────────────────┐
│  SmritiSetu Pipeline 11.4:      │ ◀───  │  Luz et al. (ADReSS) & Becker (Pitt) │
│  Speech Dementia Biomarker ML   │       │  HuggingFace Paper 2605.14888        │
└─────────────────────────────────┘       └──────────────────────────────────────┘
```

| Dataset | Local Directory | Key Research Paper & Reference | SmritiSetu ML Pipeline |
|:---|:---|:---|:---|
| **NHATS Round 1 Clock Drawings** | [`DataSets/ClockTest/Round1/`](../DataSets/ClockTest/Round1) | Chen et al. (2020), *Scientific Reports*; Souillard-Mandar (2016), *MIT* | **Visuospatial & CDT Classifier** ([Section 11.3](../SmritiSetu_Detailed_Approach.md#113-pipeline-2-clock-drawing-test-ai-scorer-computer-vision)) |
| **CognoSpeak / PROCESS-2** | [`DataSets/TalkBank/`](../DataSets/TalkBank) | *PROCESS-2: A Multilingual and Multi-accent Spoken Dialogue Corpus for Automated Cognitive Assessment* ([HuggingFace Paper](https://huggingface.co/papers/2605.14888)) | **Speech Dementia Detector** ([Section 11.4](../SmritiSetu_Detailed_Approach.md#114-pipeline-3-speech-based-cognitive-impairment-detector-audio-ml)) |
| **ADReSS & DementiaBank (Pitt)** | [`DataSets/TalkBank/`](../DataSets/TalkBank) | Luz et al. (2020), *The ADReSS Challenge*; Becker et al. (1994), *TalkBank* | **Longitudinal Speech Aging Clock** ([Section 11.4](../SmritiSetu_Detailed_Approach.md#longitudinal-speech-clock--novel-contribution)) |
| **OASIS / Kaggle Brain MRI** | Cloud API Pipeline | Marcus et al. (2007), *Open Access Series of Imaging Studies (OASIS)* | **MRI Scan Classifier** ([Section 11.2](../SmritiSetu_Detailed_Approach.md#112-pipeline-1-alzheimers-mri-scan-classifier-deep-learning)) |
| **AG News + SST-2 + Jigsaw** | Pre-trained Models | Socher et al. (2013), *EMNLP*; Zhang et al. (2015), *NeurIPS* | **Calm News / Agitation Filter** ([Section 11.5](../SmritiSetu_Detailed_Approach.md#115-pipeline-4-ai-powered-calm-news-filter-nlp)) |
| **FER2013 + AffectNet** | Edge TFLite Model | Goodfellow et al. (2013), *ICML*; Mollahosseini et al. (2019), *IEEE TAC* | **Facial Emotion Recognizer** ([Section 11.6](../SmritiSetu_Detailed_Approach.md#116-pipeline-5-facial-emotion-recognition-for-mood-monitoring-computer-vision)) |
| **UCI HAR Smartphone Sensor** | Edge TFLite Model | Anguita et al. (2013), *ESANN* | **Gait Anomaly & Fall Detector** ([Section 11.1](../SmritiSetu_Detailed_Approach.md#111-ml-model-inventory--trained-on-real-data)) |
| **AI4Bharat IndicWhisper & IndicTTS** | On-Device / Cloud | AI4Bharat (2023–2025), *Interspeech / LREC* | **Multilingual Voice Engine** ([Section 6](../SmritiSetu_Detailed_Approach.md#6-module-2-voice-enabled-multilingual-interface)) |

---

## 3. Additional Key Research Publications (Online Verified)

### A. Clinical & Epidemiological Foundations
- **LASI-DAD (Longitudinal Aging Study in India — Dementia Assessment)**:
  Gross, A. L., et al. (2024). *Prevalence of DSM-5 mild and major neurocognitive disorder in India: Results from the LASI-DAD.* **PLOS ONE**, 19(2), e0297220. [PLOS Full Text](https://doi.org/10.1371/journal.pone.0297220)
- **Reminiscence Therapy Evidence**:
  Woods, B., et al. (2018–2025). *Reminiscence therapy for dementia.* **Cochrane Database of Systematic Reviews**, CD001120. [Cochrane Review](https://doi.org/10.1002/14651858.CD001120.pub3)

### B. Digital Cognitive & Clock Drawing Screening
- **Diagnostic Accuracy of Digital Clock Drawing**:
  Chang, S.-H., et al. (2026). *Diagnostic accuracy of digital clock drawing test for Alzheimer disease and mild cognitive impairment.* **npj Digital Medicine (Nature)**, 9:503. [Nature npj Full Text](https://doi.org/10.1038/s41746-026-02687-2) • [PubMed: 42050061](https://pubmed.ncbi.nlm.nih.gov/42050061/)
- **Contrastive Learning for Automated Clock-Drawing Grading**:
  Liu, N., et al. (2026). *An improved contrastive learning loss function for automated clock-drawing test grading with implications for cognitive impairment screening.* **Frontiers in Computer Science**, 8:1690044. [Frontiers Full Text](https://doi.org/10.3389/fcomp.2026.1690044/full)

### C. Speech & Language AI
- **Survey of AI Techniques & Datasets for Speech Alzheimer's**:
  Ding, K., et al. (2024). *Speech based detection of Alzheimer's disease: A survey of AI techniques, datasets and challenges.* **Artificial Intelligence Review**, 57:325. [Springer Link](https://link.springer.com/article/10.1007/s10462-024-10961-6)
- **Transformers for Speech Dementia Detection**:
  Mobtahej, P., et al. (2026). *Transformer-based deep learning approaches for speech-based dementia detection: A systematic review.* **IEEE JBHI**, 30(3), 2034–2048. [PubMed: 40768460](https://pubmed.ncbi.nlm.nih.gov/40768460/)

---

## Navigation & Cross-References
- Read the rigorous academic literature review: [`SmritiSetu_Academic_Literature_Review_2021-2026.md`](SmritiSetu_Academic_Literature_Review_2021-2026.md)
- Read the quick 28-paper reference catalog: [`Research_Papers.md`](Research_Papers.md)
- Access local PDFs in: [`papers/`](papers)
- Explore the Clock Drawing dataset: [`../DataSets/ClockTest/`](../DataSets/ClockTest)
- Explore the Speech dataset: [`../DataSets/TalkBank/`](../DataSets/TalkBank)
- Return to Project Architecture: [`../SmritiSetu_Detailed_Approach.md`](../SmritiSetu_Detailed_Approach.md)
