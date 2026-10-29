# MindSaathi
### AI-Powered Cognitive Gaming & Memory Assistance Platform
*(SmritiSetu — "Bridge of Memory" — for Elderly Dementia Care)*

---

## Overview & Architecture Map

SmritiSetu integrates clinically validated digital cognitive games, multilingual voice interfaces (Assamese, Hindi, Meiteilon, Mizo, Bodo, Khasi), offline-first mobile sync, and data-backed AI/ML diagnostic and therapeutic models.

This workspace is structured into **Three Fully Interconnected Pillars**:
1. **System & Feature Specifications** (Detailed clinical & architectural documentation)
2. **Research & Academic Evidence Hub** (Peer-reviewed literature, clinical studies, and full-text PDFs)
3. **DataSets & Training Corpora** (Local clinical scans, public benchmark repositories, and acoustic corpora)

---

## Repository Directory Structure

```
Demetia/
├── README.md                              #  Master Project Navigation (This File)
│
├──  System Documentation
│   ├── SmritiSetu_Detailed_Approach.md   # Complete 20-Section System & Technical Specification
│   ├── SmritiSetu_Feature_Blueprint.md   # Modular Feature Breakdown & Sprint Implementation Guide
│   └── SmritiSetu_Data_Strategy.md       # AI/ML Data Engineering & Progressive Intelligence Plan
│
├──  Research Hub
│   ├── Research/README.md                # Master Academic Index & Dataset Mapping
│   ├── Research/Research_Papers.md       # 28 Key Research Papers Reference List
│   ├── Research/SmritiSetu_Academic_Literature_Review_2021-2026.md # APA 7th Literature Review
│   └── Research/papers/                  # Downloaded Full-Text PDFs (Renamed & Verified)
│       ├── Chen2020_DeepLearning_ClockDrawing_Screening.pdf
│       ├── CTC_TriAgent_GenerativeAI_Framework_2025.pdf
│       ├── GamifiedAI_DigitalArt_DementiaTherapy_2025.pdf
│       ├── Liu2025_VideoGames_MCI_MetaAnalysis.pdf
│       └── SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf
│
└──  DataSets Hub
    ├── DataSets/README.md                # Master Datasets Directory & ML Pipeline Mapping
    ├── DataSets/ClockTest/               # Clock Drawing Visuospatial Assessment Data
    │   ├── README.md                     # NHATS Dataset Guide & Clinical Paper References
    │   ├── DATA_ACCESS_AND_RELATIONSHIPS.md # Technical Data Access & Variables Dictionary
    │   ├── master_longitudinal_clock_dataset.csv #  20,622 Labeled Pairs Across Rounds 1-4
    │   ├── Round1/ to Round5/            # 27,731 Total Scanned Images & STATA Metadata
    └── DataSets/TalkBank/                # Speech & Spoken Dialogue Dementia Corpora
        └── README.md                     # CognoSpeak PROCESS-2 & DementiaBank Pitt Corpus Guide
```

---

## Cross-System Interconnection Matrix

Every component in SmritiSetu is explicitly linked between **Theory**, **Data**, **Evidence**, and **Implementation**:

| SmritiSetu Feature | Technical Specification | Empirical Research Backing | Dataset & Local Assets |
|:---|:---|:---|:---|
| **Adaptive Cognitive Gaming** | [Detailed Approach §5](SmritiSetu_Detailed_Approach.md#5-module-1-adaptive-cognitive-gaming-engine) | [Liu et al., 2025 (Frontiers Meta-Analysis)](Research/papers/Liu2025_VideoGames_MCI_MetaAnalysis.pdf)<br>[Li et al., 2025 (MDPI CTC Framework)](Research/papers/CTC_TriAgent_GenerativeAI_Framework_2025.pdf) | Game Engine Architecture<br>(Q-Learning / Thompson Sampling) |
| **Clock Drawing Stealth AI** | [Detailed Approach §11.3](SmritiSetu_Detailed_Approach.md#113-pipeline-2-clock-drawing-test-ai-scorer-computer-vision) | [Chen et al., 2020 (Nature Sci. Reports)](Research/papers/Chen2020_DeepLearning_ClockDrawing_Screening.pdf)<br>[Souillard-Mandar, 2016 (MIT)](Research/papers/SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf) | [NHATS 27,731 Scans (Rounds 1–5)](DataSets/ClockTest)<br>[20,622 Labeled Pairs Master CSV](DataSets/ClockTest/master_longitudinal_clock_dataset.csv) |
| **Cognitive Speech & Biomarkers** | [Detailed Approach §11.4](SmritiSetu_Detailed_Approach.md#114-pipeline-3-speech-based-cognitive-impairment-detector-audio-ml) | [Luz et al., 2020 (ADReSS Challenge)](Research/README.md#c-speech--language-ai)<br>[Ding et al., 2024 (AI Review)](https://doi.org/10.1007/s10462-024-10961-6) | [CognoSpeak PROCESS-2 & TalkBank](DataSets/TalkBank/README.md)<br>(120+ eGeMAPS acoustic features) |
| **Cultural Reminiscence Therapy** | [Detailed Approach §10](SmritiSetu_Detailed_Approach.md#10-cultural-localization-strategy-for-ner) | [Afonso et al., 2025 (Elsevier Art Therapy)](Research/papers/GamifiedAI_DigitalArt_DementiaTherapy_2025.pdf)<br>[Woods et al. (Cochrane Systematic Review)](https://doi.org/10.1002/14651858.CD001120.pub3) | Regional NER Cultural Content<br>(Muga silk, Bihu, Cheraw, Living Roots) |
| **Calm News & Safety NLP Filter** | [Detailed Approach §11.5](SmritiSetu_Detailed_Approach.md#115-pipeline-4-ai-powered-calm-news-filter-nlp) | [Socher et al., 2013 (SST-2)](Research/README.md#d-sentiment-safety--news-nlp)<br>[Zhang et al., 2015 (AG News)](Research/README.md#d-sentiment-safety--news-nlp) | SST-2 & Jigsaw Toxicity Models<br>(Zero-agitation NLP pipeline) |
| **Brain MRI Classification** | [Detailed Approach §11.2](SmritiSetu_Detailed_Approach.md#112-pipeline-1-alzheimers-mri-scan-classifier-deep-learning) | [Marcus et al., 2007 (OASIS Project)](Research/README.md#a-medical-imaging--mri) | Kaggle Alzheimer's 4-Class MRI<br>(EfficientNetB0 + Grad-CAM) |

---

## Key Documents & Links

- **Main Technical Approach**: [SmritiSetu_Detailed_Approach.md](SmritiSetu_Detailed_Approach.md)
- **Feature Breakdown**: [SmritiSetu_Feature_Blueprint.md](SmritiSetu_Feature_Blueprint.md)
- **AI Data Strategy**: [SmritiSetu_Data_Strategy.md](SmritiSetu_Data_Strategy.md)
- **Master Research Hub**: [Research/README.md](Research/README.md)
- **Local Research PDFs**: [Research/papers/](Research/papers)
- **Datasets Directory**: [DataSets/README.md](DataSets/README.md)
