# SmritiSetu — DataSets Hub

> Central registry connecting local datasets, external public benchmarks, and training corpora to SmritiSetu's AI/ML pipelines and research literature.

---

## DataSets Directory Structure

```
DataSets/
├── README.md                      #  This master datasets directory
├── ClockTest/                     #  Visuospatial & Clock Drawing Test data
│   ├── README.md                  # NHATS metadata guide, SPID mapping & paper links
│   └── Round1/
│       └── NHATS_Round_1_SP_ClockDrawings_0/ #  Thousands of .tif clock scans (<SPID>.tif)
└── TalkBank/                      #  Speech & Spoken Dialogue Dementia data
    └── README.md                  # Hindi datasets (DementiaBankHindi, Kathbath) & TalkBank
```

---

## Dataset-to-Module Mapping

| Dataset & Scope | Local Path / Source | Ground-Truth Labels & Variables | Research Paper Backing | SmritiSetu Module |
|:---|:---|:---|:---|:---|
| **NHATS Clock Drawing Scans + Clinical Metadata (Rounds 1–5)** | [`ClockTest/`](file:///Users/aditya/Developer/Demetia/DataSets/ClockTest/) • [nhats.org](https://www.nhats.org/) | **27,731 Images • 20,622 Labeled Pairs**<br>`cg*dclkdraw` (Clock score 0–5)<br>`hc*disescn9` (Dementia dx: 1=Yes, 2=No)<br>`r*d2intvrage`, `r*dgender`, word recall | Chen et al. (2020), *Nature Sci. Rep.*<br>Souillard-Mandar (2016), *MIT* | **Clock Drawing AI Scorer ("Bihu Chora")**<br>([Section 11.3](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#113-pipeline-2-clock-drawing-test-ai-scorer-computer-vision)) |
| **DementiaBankHindi (Hindi Dementia Benchmark)** | [GitHub: rkritesh210/DementiaBankHindi](https://github.com/rkritesh210/DementiaBankHindi) | Hindi Cookie Theft narrative transcripts & acoustic recordings | ACL Clinical NLP Workshop (2024) | **Hindi Cognitive Speech Model**<br>([Section 11.4](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#114-pipeline-3-speech-based-cognitive-impairment-detector-audio-ml)) |
| **AI4Bharat Kathbath & IndicWhisper (Hindi)** | [HuggingFace: ai4bharat/kathbath](https://huggingface.co/datasets/ai4bharat/kathbath) • [ai4bharat.org](https://ai4bharat.iitm.ac.in/) | 1,684+ hours Indian speech (thousands of hrs Hindi) with text | AI4Bharat / Interspeech (2023–2025) | **Hindi Voice Assistant & ASR**<br>([Section 6](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#6-module-2-voice-enabled-multilingual-interface)) |
| **Mozilla Common Voice (Hindi)** | [commonvoice.mozilla.org/hi](https://commonvoice.mozilla.org/hi/datasets) | Crowd-sourced diverse Hindi accents & age groups | Ardila et al. (2020), *LREC* | **Elderly Speech Adaptation**<br>([Section 6.3](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#63-elderly-specific-voice-design)) |
| **CognoSpeak / PROCESS-2** | [HuggingFace: CognoSpeak/PROCESS-2](https://huggingface.co/datasets/CognoSpeak/PROCESS-2) | Multilingual spoken dialogue cognitive screening corpus | PROCESS-2 Paper ([HF 2605.14888](https://huggingface.co/papers/2605.14888)) | **Dialogue Assessment**<br>([Section 11.4](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#114-pipeline-3-speech-based-cognitive-impairment-detector-audio-ml)) |
| **ADReSS & DementiaBank (Pitt Corpus)** | [dementia.talkbank.org](https://dementia.talkbank.org/) | eGeMAPS acoustic features (pause ratio, F0, jitter, shimmer) | Luz et al. (2020), *INTERSPEECH*<br>Becker et al. (1994) | **Cross-Lingual Acoustic Biomarkers**<br>([Section 11.4](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#longitudinal-speech-clock--novel-contribution)) |
| **Kaggle Alzheimer's 4-Class MRI** | [Kaggle Dataset](https://www.kaggle.com/datasets/tourist55/alzheimers-dataset-4-class-of-images) | 6,400 MRI images (Non, Very Mild, Mild, Moderate Demented) | Marcus et al. (2007), *OASIS Project* | **Brain MRI Scan Classifier**<br>([Section 11.2](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#112-pipeline-1-alzheimers-mri-scan-classifier-deep-learning)) |
| **SST-2 + AG News + Jigsaw Toxicity** | Hugging Face & Kaggle | Sentiment polarity, toxicity scores, news categories | Socher et al. (2013); Zhang et al. (2015) | **Calm News / Agitation Filter**<br>([Section 11.5](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#115-pipeline-4-ai-powered-calm-news-filter-nlp)) |
| **FER2013 + AffectNet** | Kaggle & Academic Repos | 35,887+ facial emotion images (7 classes) | Goodfellow et al. (2013), *ICML* | **Facial Emotion Recognizer**<br>([Section 11.6](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#116-pipeline-5-facial-emotion-recognition-for-mood-monitoring-computer-vision)) |

---

## Quick Links
- [View ClockTest Dataset README & SPID Mapping Guide](file:///Users/aditya/Developer/Demetia/DataSets/ClockTest/README.md)
- [View TalkBank & Hindi Speech Corpora README](file:///Users/aditya/Developer/Demetia/DataSets/TalkBank/README.md)
- [View Research Hub & Local Papers](file:///Users/aditya/Developer/Demetia/Research/README.md)
- [Detailed AI/ML Approach Specification](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md)
