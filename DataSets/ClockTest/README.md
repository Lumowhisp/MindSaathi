# ClockTest Dataset — Visuospatial Cognitive Assessment

> **Source**: National Health and Aging Trends Study (NHATS) Rounds 1–5 Sample Person (SP) Clock Drawings & Longitudinal Clinical Metadata.

---

## 1. Directory Structure & Round-Wise Counts

All survey rounds have been unzipped, standardized, and paired with their clinical survey records:

| Round | Survey Year | Images in `ClockDrawings/` | Labeled Image-Metadata Pairs | Generated CSV File |
|:---|:---|:---|:---|:---|
| **Round 1** | 2011 (Baseline) | 6,966 `.tif` files | **6,955 pairs** | [`Round1/labeled_clock_drawings_round1.csv`](Round1/labeled_clock_drawings_round1.csv) |
| **Round 2** | 2012 (Follow-up) | 5,524 `.tif` files | **5,516 pairs** | [`Round2/labeled_clock_drawings_round2.csv`](Round2/labeled_clock_drawings_round2.csv) |
| **Round 3** | 2013 (Follow-up) | 4,481 `.tif` files | **4,476 pairs** | [`Round3/labeled_clock_drawings_round3.csv`](Round3/labeled_clock_drawings_round3.csv) |
| **Round 4** | 2014 (Follow-up) | 3,675 `.tif` files | **3,675 pairs** | [`Round4/labeled_clock_drawings_round4.csv`](Round4/labeled_clock_drawings_round4.csv) |
| **Round 5** | 2015 (Follow-up) | 7,085 `.tif` files | *Ready for labeling* | `Round5/ClockDrawings/` |
| **TOTAL** | **2011–2015** | **27,731 Images** | **20,622 Labeled Pairs** | [`master_longitudinal_clock_dataset.csv`](master_longitudinal_clock_dataset.csv) |

---

## 2. Comprehensive Documentation

 **Read the full Technical Guide**: [`DATA_ACCESS_AND_RELATIONSHIPS.md`](DATA_ACCESS_AND_RELATIONSHIPS.md)
Contains:
- Exact `<SPID>.tif`  `SP_File.dta` matching mechanism.
- Complete clinical variables dictionary (`cg*dclkdraw` 0–5 scale, `hc*disescn9` dementia diagnosis, age brackets, memory scores).
- Longitudinal tracking instructions across years.
- Ready-to-train PyTorch `Dataset` and `DataLoader` code snippet.

---

## 3. Connected Research Papers & Scientific Backing

1. **Automatic Dementia Screening by Applying Deep Learning on Clock-Drawing Tests**
   - *Authors*: Shuqing Chen, Daniel Stromer, Harb Alnasser Alabdalrahim, Stefan Schwab, Markus Weih (2020)
   - *Journal*: **Scientific Reports (Nature)**, 10:20854
   - *DOI*: [10.1038/s41598-020-74710-9](https://www.nature.com/articles/s41598-020-74710-9) • [PubMed: 33257744](https://pubmed.ncbi.nlm.nih.gov/33257744/)
   -  **Local PDF Available**: [Chen2020_DeepLearning_ClockDrawing_Screening.pdf](../../Research/papers/Chen2020_DeepLearning_ClockDrawing_Screening.pdf)

2. **Learning Classification Models from Digital Clock Drawings**
   - *Author*: William Souillard-Mandar (2016)
   - *Institution*: **MIT Department of Electrical Engineering & Computer Science**
   - *Repository*: [MIT DSpace Record](https://dspace.mit.edu/entities/publication/4086b780-7ce5-460a-84ed-3ace0fde286e)
   -  **Local PDF Available**: [SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf](../../Research/papers/SouillardMandar2016_DigitalClockDrawing_ClassificationModels.pdf)

---

## 4. Integration in SmritiSetu ("Stealth Assessment")

In SmritiSetu, this dataset powers the **"Bihu Chora" (Weaving & Shapes)** cognitive game:
- The patient completes a clock drawing on their device as a relaxed cultural shape game.
- The on-device CNN (trained on these 20,622 NHATS samples) automatically scores visuospatial integrity on the **0–5 scale**.
- The score silently feeds the caregiver's MoCA visuospatial domain report without patient anxiety.
- Architecture details: [SmritiSetu_Detailed_Approach.md Section 11.3](../../SmritiSetu_Detailed_Approach.md#113-pipeline-2-clock-drawing-test-ai-scorer-computer-vision).
