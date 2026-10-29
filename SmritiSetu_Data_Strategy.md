# SmritiSetu — The "No Data? No Problem" Implementation Strategy

> **The Question:** "We have zero data on Day 1. How do we build AI/ML features?"
> **The Answer:** You DON'T start with ML. You start with **rules**, collect data through the app, then **graduate to ML** when you have enough. This is exactly how every real AI product works.

---

## The Golden Rule: 3-Phase Evolution

```
PHASE 1 (Day 1 — Launch)          PHASE 2 (Month 2-3)           PHASE 3 (Month 6+)
━━━━━━━━━━━━━━━━━━━━━           ━━━━━━━━━━━━━━━━━━━           ━━━━━━━━━━━━━━━━━━━
Rule-Based Heuristics             Hybrid (Rules + ML)           Full ML Models
+ Pre-trained Models              First models trained          Personalized per patient
+ Public Datasets                 on collected data             Federated learning

 Works from Day 1               Needs ~50-100 users         Needs 500+ users
   No custom data needed            ~2 months of data              ~6 months of data
```

**This is literally how Google, Netflix, Spotify all started. No one launches with ML on Day 1.**

---

## Feature-by-Feature: How Each One Bootstraps

---

### 1.  Speech Biomarker Engine

**The cold start worry:** "We don't have dementia speech recordings in Assamese"

**The solution:**

| Phase | What You Do | Data Source |
|:---|:---|:---|
| **Phase 1** | Use **pre-trained models** that already work | **ADReSS / ADReSSo** dataset (public, free) — 156 dementia + 156 healthy speech samples |
| | | **DementiaBank Pitt Corpus** (free for research) — 500+ recorded interviews |
| | | **Whisper** already extracts acoustic features from ANY language |
| | Extract features, DON'T classify yet | Just store: pause count, speech rate, pitch variance per session |
| **Phase 2** | Build trend lines per patient | Compare THIS week's features to THEIR OWN baseline from Week 1 |
| | | No external training data needed — **each patient is their own control** |
| **Phase 3** | Train classifier on collected corpus | After 6 months, you have thousands of speech sessions with game scores attached |

**Key insight:** You don't need to classify "dementia vs healthy" on Day 1. You just need to track **"is THIS person's speech getting worse over time?"** — and for that, you only need their OWN past data.

```python
# Day 1 — Pure rule-based, zero ML needed
def check_speech_decline(current_session, past_sessions):
    """
    No ML model needed. Just math.
    """
    baseline_speech_rate = mean([s.words_per_min for s in past_sessions[:5]])  # first 5 sessions
    current_speech_rate = current_session.words_per_min

    baseline_pause_ratio = mean([s.pause_ratio for s in past_sessions[:5]])
    current_pause_ratio = current_session.pause_ratio

    # Simple percentage change — works from Week 2 onwards
    speech_rate_change = (current_speech_rate - baseline_speech_rate) / baseline_speech_rate
    pause_ratio_change = (current_pause_ratio - baseline_pause_ratio) / baseline_pause_ratio

    if speech_rate_change < -0.20:  # 20% slower than their own baseline
        flag("Speech rate declining")
    if pause_ratio_change > 0.30:   # 30% more pauses than their baseline
        flag("Increased hesitation detected")

    # Store everything — this becomes training data for Phase 2 ML model
    save_to_database(current_session.features)
```

---

### 2.  Frustration Detection

**The cold start worry:** "We don't have labeled frustration data"

**The solution:**

| Phase | What You Do | Why It Works |
|:---|:---|:---|
| **Phase 1** | **Simple rule-based thresholds** | You don't need ML to detect obvious frustration |
| **Phase 2** | **Self-labeling through game outcomes** | If a patient quits mid-game → that session was probably frustrating → auto-label it |
| **Phase 3** | Train Random Forest on auto-labeled data | Now you have thousands of labeled sessions |

```python
# Day 1 — Rules only, ZERO ML
def detect_frustration_rules(game_session):
    """Works immediately. No training data needed."""

    score = 0.0

    # Rule 1: Same wrong answer tapped 3+ times
    if game_session.repeated_wrong_taps >= 3:
        score += 0.3

    # Rule 2: Reaction time suddenly 3x slower than their average
    if game_session.current_rt > 3 * game_session.avg_rt:
        score += 0.2

    # Rule 3: No interaction for 30+ seconds (frozen/confused)
    if game_session.max_inactivity_seconds > 30:
        score += 0.25

    # Rule 4: Device physically shaken
    if game_session.shake_detected:
        score += 0.25

    # Rule 5: Session abandoned before completion
    if game_session.abandoned:
        score += 0.3

    return min(score, 1.0)  # Cap at 1.0

# MEANWHILE: Log everything for future ML training
# Label = "frustrated" if score > 0.6 OR session was abandoned
# Label = "engaged" if session completed with score > 70%
# After 500 labeled sessions → train a proper ML model
```

**The auto-labeling trick:** You don't need humans to label data. The app generates labels automatically:
- Session completed + high score = **"engaged"**
- Session abandoned + multiple errors = **"frustrated"**
- Session completed + low score but no abandonment = **"struggling but OK"**

---

### 3.  Cognitive Decline Predictor

**The cold start worry:** "LSTM needs months of longitudinal data"

**The solution: You literally DON'T need this on Day 1.**

| Phase | What You Do |
|:---|:---|
| **Phase 1 (Month 1-3)** | Just show **raw trends** on the caregiver dashboard. A simple line chart of weekly scores. No prediction, just observation. |
| **Phase 2 (Month 3-6)** | Add **linear regression trendlines**. "Score is dropping at 2 points/month." Still no ML. Just math. |
| **Phase 3 (Month 6+)** | NOW you have 6 months of per-patient data. Train LSTM on patients who DID decline vs. those who didn't. |

```python
# Month 1-3: Just plot the data. No ML.
def get_cognitive_trend(patient_id, domain):
    scores = get_weekly_scores(patient_id, domain, last_n_weeks=12)

    # Simple linear regression — literally y = mx + b
    slope = compute_slope(scores)

    if slope < -0.5:  # losing > 0.5 points per week
        return " Declining"
    elif slope > 0.3:
        return " Improving"
    else:
        return " Stable"

    # That's it. This is useful, honest, and requires ZERO ML.
```

---

### 4.  Sundowning Predictor

**The cold start worry:** "We don't have historical agitation event data"

**The solution:**

| Phase | Strategy |
|:---|:---|
| **Phase 1** | **Caregiver manual logging.** Simple button: "Patient had a bad evening today." That's your label. |
| **Phase 2** | After 30-50 logged agitation events per patient, correlate with that day's sleep, game scores, activity |
| **Phase 3** | Train XGBoost on the correlation data |

```
Week 1-8: Caregiver logs "bad evening" events manually
          App automatically records context:
            - Last night's sleep (phone screen-off time)
            - Morning game score
            - Step count
            - Weather
            - Medication adherence

After 8 weeks with ~20 "bad evening" labels:
  → Simple correlation analysis:
    "Bad evenings happen 78% of the time when sleep < 5 hours"
  → Show this insight to caregiver (no ML needed!)

After 6 months with 50+ labels:
  → Train actual XGBoost predictor
```

---

### 5.  AI Conversational Companion

**The cold start worry:** "We need NLU training data in Assamese"

**The solution: This one actually needs LEAST data because it's template-based!**

```python
# Day 1 — Template + keyword matching. No ML at all.
INTENT_KEYWORDS = {
    'where_is_family': ['koi gol', 'kot ase', 'kiya gol', 'kahan gaya'],
    'what_day': ['aji ki bar', 'aaj kya din', 'tarikh ki'],
    'play_game': ['khel', 'game', 'khelibo'],
    'help': ['madad', 'sahay', 'help'],
    'medicine': ['dawai', 'drab', 'medicine', 'goli'],
}

def get_intent(text):
    text_lower = text.lower()
    for intent, keywords in INTENT_KEYWORDS.items():
        if any(kw in text_lower for kw in keywords):
            return intent
    return 'general_chat'

# Response is template-based using caregiver-curated vault data
RESPONSES = {
    'where_is_family': "{{son_name}} kamloi goise. Xondiyaloi ahibo. ",
    'what_day': "Aji {{day_name}}, {{date}}. Apuni {{home_location}}-t ase. ",
    # etc.
}
```

**Upgrade path:**
- Month 1: Keyword matching (works perfectly for 10-15 intents)
- Month 3: Train a small DistilBERT classifier on logged conversations
- Month 6+: Fine-tune on real user interaction patterns

---

### 6.  Face/Object/Pill Recognition

**The cold start worry:** None! **Pre-trained models already exist.**

| Model | Pre-trained Source | What You Do |
|:---|:---|:---|
| Face Recognition | **MobileFaceNet** (open source, 5MB) | Just enroll 5-10 family photos. Works instantly. |
| Object Recognition | **MobileNet V3** (trained on ImageNet) | Already recognizes 1000+ objects. Fine-tune for Indian pills/items. |
| Pill Identification | **NIH Pill Image Dataset** (public, 4000+ pills) | Fine-tune MobileNet on Indian medicine images |

**These need ZERO custom training data.** The models are pre-trained. You just use them.

---

### 7.  Gait Anomaly Detection

**The cold start worry:** "We need labeled fall/gait data"

**The solution: This is UNSUPERVISED — it doesn't need labels!**

```python
# Isolation Forest = anomaly detection = NO LABELS NEEDED
from sklearn.ensemble import IsolationForest

class GaitMonitor:
    def __init__(self):
        self.baseline_data = []
        self.model = None

    def collect_baseline(self, daily_gait_features):
        """First 2 weeks: just collect what 'normal' looks like for THIS patient"""
        self.baseline_data.append(daily_gait_features)

        if len(self.baseline_data) >= 14:  # 2 weeks of data
            # Train Isolation Forest on THEIR normal patterns
            # No external data needed. No labels needed.
            self.model = IsolationForest(contamination=0.1)
            self.model.fit(self.baseline_data)

    def check_today(self, today_features):
        """After 2 weeks: flag anything that deviates from THEIR normal"""
        if self.model is None:
            return "Still learning baseline..."

        prediction = self.model.predict([today_features])
        if prediction == -1:  # Anomaly
            return " Gait pattern unusual today"
        return " Normal"
```

**Key insight:** Anomaly detection is **unsupervised**. You don't need to know what a "fall" looks like. You just need to know what "normal" looks like for this specific person, and flag when something is different.

---

### 8.  Therapy Recommender (Contextual Bandit)

**The cold start worry:** "Bandit needs exploration data"

**The solution: Bandits are DESIGNED for the cold start problem!**

```python
# LinUCB naturally balances exploration vs exploitation
# In early days → it EXPLORES (tries different games at different times)
# After data accumulates → it EXPLOITS (recommends what works best)

# Day 1: Essentially random recommendations (exploration)
# Week 2: Starting to learn "memory games work better in mornings"
# Month 2: Confident personalized schedule

# But you can warm-start with clinical priors:
DEFAULT_SCHEDULE = {
    'morning':   ['memory_game', 'orientation_quiz'],    # Mornings = highest alertness
    'afternoon': ['trail_making', 'language_game'],      # Moderate difficulty
    'evening':   ['music_therapy', 'reminiscence'],      # Calming, low-demand
}
# Bandit starts with this default and adapts from there
```

---

## Public Datasets You Can Use TODAY (Free)

| Dataset | What It Contains | Size | Use For |
|:---|:---|:---|:---|
| **ADReSS Challenge** | Dementia vs. healthy speech recordings + transcripts | 156 + 156 samples | Speech biomarker model training |
| **DementiaBank Pitt Corpus** | Cookie Theft picture descriptions by dementia patients | 500+ sessions | Linguistic feature extraction |
| **ADReSSo** | Spontaneous speech, no manual transcription needed | 237 samples | Acoustic-only classification |
| **TAUKADIAL** | Multilingual (English + Chinese) dementia speech | 200+ | Cross-lingual speech model |
| **MoCA / MMSE Public Norms** | Score distributions by age, education | Large normative data | Calibrating your scoring system |
| **NIH Pill Image Recognition** | Photos of pills with labels | 4000+ | Pill identification model |
| **ImageNet / COCO** | Object images | Millions | Pre-trained object detection |
| **UCI HAR Dataset** | Accelerometer data for human activity recognition | 10K+ samples | Gait/activity baseline model |

---

## The TL;DR — What Works From Day 1 With ZERO Data

| Feature | Day 1 Strategy (No Data) | When ML Kicks In |
|:---|:---|:---|
| **Speech Analysis** | Just STORE features. Show raw trends. | Month 3 (per-patient baseline comparison) |
| **Frustration Detection** | Rule-based thresholds (tap speed, abandonment) | Month 2 (auto-labeled from game outcomes) |
| **Cognitive Decline** | Simple line charts + linear regression slopes | Month 6 (LSTM on longitudinal data) |
| **Sundowning Prediction** | Caregiver manual log + correlation insights | Month 4 (XGBoost on 50+ labeled events) |
| **AI Companion** | Keyword matching + templates | Month 3 (DistilBERT on logged conversations) |
| **Face/Object/Pill Recognition** | Pre-trained models. Works instantly. | Already ML from Day 1  |
| **Gait Anomaly** | Collect 2-week personal baseline | Week 3 (Isolation Forest, unsupervised) |
| **Therapy Recommender** | Clinical default schedule + exploration | Week 2 (bandit learns from engagement) |

---

## The Professor-Friendly Way to Say This

> *"Our system follows a **progressive intelligence architecture**. On Day 1, we deploy rule-based heuristics and pre-trained transfer learning models that require zero custom training data. As users interact with the platform, every game session, voice interaction, and behavioral signal is logged and auto-labeled. This creates a continuously growing proprietary dataset. By Month 2, we have enough interaction data to train lightweight edge models. By Month 6, we have sufficient longitudinal data for temporal deep learning models like LSTMs. The system literally gets smarter the more it's used — a self-improving feedback loop. This approach is called **'Rules First, ML Later'** and it's the standard practice at companies like Google, Uber, and Netflix for cold-starting AI products."*

```
THE FLYWHEEL EFFECT:
━━━━━━━━━━━━━━━━━━━

  Patient plays games → Data collected → Rules work on Day 1
         ↑                                        ↓
    Better games                           Data accumulates
    recommended                                   ↓
         ↑                              ML models trained
    ML gets smarter ←──────────────── Better predictions
```
