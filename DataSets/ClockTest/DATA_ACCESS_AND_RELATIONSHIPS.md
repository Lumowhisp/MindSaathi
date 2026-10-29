# NHATS Clock Drawing Dataset — Data Access, Relationships & Modeling Guide

> **Project**: SmritiSetu Visuospatial AI Pipeline & Longitudinal Cognitive Tracking
> **Source**: National Health and Aging Trends Study (NHATS) Rounds 1–5
> **Dataset Status**: **27,731 High-Resolution Scans** • **20,622 Clinically Labeled Pairs** Across Rounds 1–4

---

## 1. Standardized Directory Architecture

All round files have been unpacked, sorted, and arranged systematically into uniform subfolders:

```

DataSets/ClockTest/
├── README.md                                # Quick reference & scientific overview
├── DATA_ACCESS_AND_RELATIONSHIPS.md         #  This comprehensive access & relation guide
├── generate_labeled_metadata.py             # Automated pairing script (STATA .dta  Clean CSV)
├── master_longitudinal_clock_dataset.csv    #  Combined 20,622 labeled images across Rounds 1-4
│
├── Round1/                                  # Round 1 Baseline (Year 2011)
│   ├── ClockDrawings/                       #  6,966 .tif image files (<SPID>.tif)
│   ├── Metadata_STATA/                      # Official NHATS R1 STATA .dta & frequency PDFs
│   ├── Metadata_SAS/                        # Official NHATS R1 SAS .sas7bdat & formats
│   └── labeled_clock_drawings_round1.csv    #  6,955 Labeled image-metadata pairs
│
├── Round2/                                  # Round 2 Follow-Up (Year 2012)
│   ├── ClockDrawings/                       #  5,524 .tif image files
│   ├── Metadata_STATA/                      # Official NHATS R2 STATA .dta files
│   ├── Metadata_SAS/                        # Official NHATS R2 SAS files
│   └── labeled_clock_drawings_round2.csv    #  5,516 Labeled image-metadata pairs
│
├── Round3/                                  # Round 3 Follow-Up (Year 2013)
│   ├── ClockDrawings/                       #  4,481 .tif image files
│   ├── Metadata_STATA/                      # Official NHATS R3 STATA .dta files
│   ├── Metadata_SAS/                        # Official NHATS R3 SAS files
│   └── labeled_clock_drawings_round3.csv    #  4,476 Labeled image-metadata pairs
│
├── Round4/                                  # Round 4 Follow-Up (Year 2014)
│   ├── ClockDrawings/                       #  3,675 .tif image files
│   ├── Metadata_STATA/                      # Official NHATS R4 STATA .dta files
│   ├── Metadata_SAS/                        # Official NHATS R4 SAS files
│   └── labeled_clock_drawings_round4.csv    #  3,675 Labeled image-metadata pairs
│
├── Round5/                                  # Round 5 Follow-Up (Year 2015)
│   └── ClockDrawings/                       #  7,085 .tif image files (Ready for labeling)
├── Round6/                                  # Placeholder for future survey rounds
└── Round7/                                  # Placeholder for future survey rounds
```

---

## 2. The Core Relationship: Image Filename  Clinical Participant

The connection between graphic image files and survey metadata is defined by the **Sample Person ID (`SPID`)**:

$$\mathbf{Image\ File:\ } \texttt{ClockDrawings/\{SPID\}.tif} \quad \Longleftrightarrow \quad \mathbf{Survey\ Row:\ } \texttt{SP\_File.dta[\text{'spid'}]} == \mathbf{SPID}$$

For example, image file **`10000003.tif`** directly links to participant record `SPID: 10000003`:

```
┌─────────────────────────────────┐
│ Image: 10000003.tif             │
│ (Scanned Clock Drawing Canvas)  │
└────────────────┬────────────────┘
                 │
                 ▼  Matched via SPID == 10000003
┌────────────────────────────────────────────────────────────────────────┐
│ NHATS SP Clinical Metadata:                                            │
│ • Round: 1                                                             │
│ • Clock Score: 4 ("Reasonably accurate depiction of a clock")          │
│ • Image Clarity: 1 ("Good quality")                                    │
│ • Dementia Diagnosis: 2 ("NO - Not diagnosed with Alzheimer's/dementia")│
│ • Age Bracket: 1 ("65-69 years old")                                   │
│ • Gender: 1 ("Male")                                                   │
│ • Immediate Word Recall: 6/10 words                                    │
│ • Delayed Word Recall: 5/10 words                                      │
└────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Clinical Variables Dictionary

In each Round $X$ ($X \in \{1, 2, 3, 4\}$), the corresponding variables in the survey metadata are standardized as follows:

| Column Name in CSV | NHATS Original Variable | Clinical Description | Values & Interpretation |
|:---|:---|:---|:---|
| **`spid`** | `spid` | Unique Participant Identifier | 8-digit unique ID (e.g., `10000003`) |
| **`round`** | — | Survey Round Year | 1 (2011), 2 (2012), 3 (2013), 4 (2014) |
| **`image_path`** | — | Absolute/Relative Path to `.tif` | Direct link to load image into PyTorch/TensorFlow |
| **`clock_score_raw`** | `cg{X}dclkdraw` | **Clock Drawing Test Score (0–5)**<br>*(Schretlen et al., 2010)* | • **5**: Accurate depiction of a clock<br>• **4**: Reasonably accurate depiction<br>• **3**: Mildly distorted depiction<br>• **2**: Moderately distorted (missing/extra numbers/hands)<br>• **1**: Severely distorted (time unreadable)<br>• **0**: Not recognizable as a clock<br>• Negative values: `-4` (did not attempt), `-7` (refused), `-9` (missing) |
| **`clock_clarity`** | `cg{X}dclkimgcl` | Scanned Image Legibility | 1 = Scannable/Clear, 2 = Partially degraded |
| **`dementia_dx`** | `hc{X}disescn9` | **Doctor Dementia Diagnosis** | • **1 (YES)**: Clinically diagnosed with Alzheimer's/dementia<br>• **2 (NO)**: No clinical diagnosis of dementia<br>• **7**: Previously reported in prior round |
| **`age_bracket`** | `r{X}d2intvrage` | Age Category of Respondent | 1 = 65–69, 2 = 70–74, 3 = 75–79, 4 = 80–84, 5 = 85–89, 6 = 90+ |
| **`gender`** | `r1dgender` / `hh2spgender` | Sex of Respondent | 1 = Male, 2 = Female |
| **`immediate_word_recall`**| `cg{X}dwrdimmrc` | Immediate Memory Recall | Number of words recalled immediately out of 10 |
| **`delayed_word_recall`**  | `cg{X}dwrddlyrc` | Delayed Memory Recall | Number of words recalled after 5-minute delay out of 10 |

---

## 4. Longitudinal Cognitive Tracking Across Multiple Years

A key unique advantage of NHATS is that it is a **longitudinal panel study**. The **same individual (`spid`)** is examined across successive years:

```
Participant 10000010 Cognitive Trajectory:
Round 1 (2011): Clock Score = 4 (Normal)    ──▶ Dementia Dx = NO
Round 2 (2012): Clock Score = 3 (Mild)      ──▶ Dementia Dx = NO
Round 3 (2013): Clock Score = 2 (Moderate)  ──▶ Dementia Dx = YES (Alzheimer's onset)
Round 4 (2014): Clock Score = 1 (Severe)    ──▶ Dementia Dx = YES
```

### Tracking Script (Longitudinal Delta Example):
```python
import pandas as pd

df = pd.read_csv("master_longitudinal_clock_dataset.csv")

# Filter participants with drawings across all 4 rounds
full_cohort = df.groupby('spid').filter(lambda g: len(g) >= 3)
print(f"Participants with 3+ annual clock drawings: {full_cohort['spid'].nunique()}")

# Calculate score drift over time
pivot = full_cohort.pivot(index='spid', columns='round', values='clock_score_raw')
print(pivot.head())
```

---

## 5. Deep Learning Model Training Pipeline (PyTorch Example)

Below is ready-to-use Python code to train a **ResNet / EfficientNet** model directly using `master_longitudinal_clock_dataset.csv`:

```python
import torch
import torchvision.transforms as transforms
from torch.utils.data import Dataset, DataLoader
from PIL import Image
import pandas as pd

class NHATSClockDataset(Dataset):
    def __init__(self, csv_file, transform=None):
        df = pd.read_csv(csv_file)
        # Filter valid scores (0 to 5)
        self.data = df[df['clock_score_raw'].astype(str).str.contains('^[0-5]', regex=True)].copy()
        self.data['score'] = self.data['clock_score_raw'].astype(str).str[0].astype(int)
        self.transform = transform

    def __len__(self):
        return len(self.data)

    def __getitem__(self, idx):
        row = self.data.iloc[idx]
        img_path = row['image_path']
        image = Image.open(img_path).convert('RGB')
        label = row['score']

        if self.transform:
            image = self.transform(image)

        return image, torch.tensor(label, dtype=torch.long)

# Transforms for 224x224 CNN input
transform = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
])

dataset = NHATSClockDataset("master_longitudinal_clock_dataset.csv", transform=transform)
train_loader = DataLoader(dataset, batch_size=32, shuffle=True)

print(f"Ready for training: {len(dataset)} valid labeled clock drawings loaded!")
```

---

## 6. Integration in SmritiSetu ("Stealth Assessment")

In SmritiSetu, this engine operates inside the **"Bihu Chora" (Weaving & Shapes)** game:
1. Patient is asked to complete a clock drawing on their tablet (e.g. *"Show 4 o'clock tea time"*).
2. Canvas stroke coordinates and raster image are saved.
3. The on-device CNN (trained on this NHATS dataset) grades the clock from **0 to 5** without displaying a stressful test result to the patient.
4. The score is integrated into the caregiver's MoCA visuospatial domain report.
