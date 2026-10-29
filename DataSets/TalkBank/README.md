# TalkBank & Hindi Speech Corpora — Speech-Based Cognitive Assessment

> Speech and spoken language are among the earliest non-invasive biomarkers of cognitive decline, preceding formal clinical dementia diagnoses by 2 to 5 years.

---

## 1. Hindi & Indian Speech Datasets (Priority for Phase 1 App)

Since SmritiSetu is launching initially with a **Hindi voice interface**, we utilize dedicated Hindi and Indian regional speech corpora alongside clinical adaptation benchmarks:

### A. DementiaBankHindi (Clinical NLP Benchmark)
- **Description**: Spoken narrative dataset specifically adapted and translated for analyzing Alzheimer's Disease speech in **Hindi** using the standardized Cookie Theft paradigm.
- **Academic Citation**: *"Breaking Barriers: Exploring the Diagnostic Potential of Speech Narratives in Hindi for Alzheimer's Disease"* (ACL Clinical NLP Workshop).
- **Repository & Code**: [GitHub: rkritesh210/DementiaBankHindi](https://github.com/rkritesh210/DementiaBankHindi)
- **Role in SmritiSetu**: Used for benchmarking Hindi vocabulary reduction, hesitation patterns, and cross-lingual validation of dementia classification.

### B. AI4Bharat Kathbath (Large-Scale Indian Speech Corpus)
- **Description**: Open-access speech dataset containing over 1,684 hours of audio across 12 Indian languages, including thousands of hours of high-quality **Hindi speech** with verified transcriptions.
- **Repository**: [Hugging Face: ai4bharat/kathbath](https://huggingface.co/datasets/ai4bharat/kathbath) • [AI4Bharat Models](https://models.ai4bharat.org/)
- **Role in SmritiSetu**: Fine-tuning ASR (Speech-to-Text) for conversational Hindi and training wake-word-free intent recognition.

### C. Mozilla Common Voice (Hindi)
- **Description**: Massive open crowd-sourced speech corpus covering diverse age demographics, accents, and recording conditions across India.
- **Repository**: [Mozilla Common Voice Hindi Dataset](https://commonvoice.mozilla.org/hi/datasets)
- **Role in SmritiSetu**: Baseline acoustic pre-training and elderly voice adaptation.

### D. AI4Bharat IndicWhisper & IndicTTS
- **Description**: State-of-the-art multilingual ASR and natural Text-to-Speech models built specifically for Indian phonetics, dialects, and code-switching (Hindi-English).
- **Official Portal**: [AI4Bharat IIT Madras](https://ai4bharat.iitm.ac.in/) • [IndicWhisper Models](https://models.ai4bharat.org/)
- **Role in SmritiSetu**: Provides the warm, conversational voice assistant that speaks to the patient in natural Hindi.

---

## 2. Why Acoustic Biomarkers are Language-Independent (Scientific Basis)

A fundamental clinical question is: *Can models trained on acoustic speech features work for Hindi speakers if pre-trained on English dementia datasets?*

**Answer: YES — because acoustic biomarkers are physiological, not grammatical.**

| Acoustic Biomarker | Biological Cause in Dementia | Language Dependency |
|:---|:---|:---|
| **Pause Duration & Silence Ratio** | Semantic retrieval failure in the hippocampus causes longer thinking silences (>1.0s). | **Language-Agnostic** (Pauses sound identical in Hindi and English) |
| **Pitch Jitter & Shimmer** | Micro-tremors in laryngeal motor control due to neuromuscular decline. | **Language-Agnostic** (Physiological property of vocal cords) |
| **Pitch Flattening (F0 Range)** | Emotional flattening and apathy associated with temporal lobe degeneration. | **Language-Agnostic** (Fundamental frequency variance) |
| **Speech Rate (Syllable Pacing)** | Slowed cognitive processing speed. | **Normalized per language** |

SmritiSetu extracts the **eGeMAPS** (Extended Geneva Minimal Acoustic Parameter Set — 88 standard acoustic features) using `librosa` and OpenSMILE, enabling robust cross-lingual cognitive tracking.

---

## 3. International Benchmark Datasets

### A. CognoSpeak / PROCESS-2
- **Description**: Multilingual and multi-accent spoken dialogue corpus for automated cognitive assessment.
- **Dataset Repository**: [Hugging Face: CognoSpeak/PROCESS-2](https://huggingface.co/datasets/CognoSpeak/PROCESS-2)
- **Paper Link**: [Hugging Face Papers: 2605.14888](https://huggingface.co/papers/2605.14888)

### B. TalkBank / DementiaBank (Pitt Corpus) & ADReSS Challenge
- **Description**: Gold-standard clinical benchmark recordings of Alzheimer's patients and age-matched controls describing picture prompts.
- **Access Portal**: [DementiaBank Consortium](https://dementia.talkbank.org/)
- **Key Papers**:
  - Luz, S., et al. (2020). *"Alzheimer's Dementia Recognition through Spontaneous Speech: The ADReSS Challenge."* INTERSPEECH.
  - Becker, J. T., et al. (1994). *"The Natural History of Alzheimer's Disease: Description of Study Cohort and Accuracy of Diagnosis."* Archives of Neurology.

---

## 4. Integration in SmritiSetu ("Speech Aging Clock")

1. **Acoustic Extraction**: Evaluates pause ratios, speech rate, and jitter during voice games (*"Katha Mala"*, *"Aji ki Kobo"*).
2. **Hindi NLP Analysis**: Uses `IndicWhisper` to transcribe Hindi speech and evaluates vocabulary shrinkage over time.
3. **Biological Speech-Age Gap**: Compares estimated speech age against chronological age to detect early subtle hippocampal decline.
4. See full architecture in [SmritiSetu_Detailed_Approach.md Section 11.4](file:///Users/aditya/Developer/Demetia/SmritiSetu_Detailed_Approach.md#114-pipeline-3-speech-based-cognitive-impairment-detector-audio-ml).
