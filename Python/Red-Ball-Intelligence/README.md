# 🏏 Red Ball Intelligence — Python Analysis

## 📌 Project Overview

Red Ball Intelligence is a Python-based Test Cricket analytics project focused on transforming raw cricket match data into structured analytical datasets for advanced performance analysis.

Unlike standard analysis projects that rely on pre-processed datasets, this project involved custom dataset engineering, feature creation, and analytical transformation workflows built from scratch using Python and Pandas.

The project explores:

* match performance analysis
* series-level analysis
* opponent-wise comparisons
* SENA overseas challenges
* timeline and era evolution
* home vs away performance trends

The engineered datasets later serve as the foundation for Power BI dashboard visualization.

---

# 🎯 Project Objectives

* Build reusable master cricket datasets
* Engineer analytical cricket features
* Transform raw match-level data into team-centric datasets
* Analyze overseas SENA performance
* Explore long-term Test cricket evolution
* Create Power BI-ready analytical datasets
* Develop sports-focused analytical workflows

---

# 🛠 Tech Stack

| Tool             | Purpose                     |
| ---------------- | --------------------------- |
| Python           | Data Engineering & Analysis |
| Pandas           | Data Transformation         |          
| Matplotlib       | Visualization               |
| Seaborn          | Statistical Visualization   |
| Jupyter Notebook | Analysis Workflow           |

---

# 📂 Project Structure

```text
Red-Ball-Intelligence/
│
├── CSVs
│   ├── master_test_dataset.csv
│   ├── master_test_dataset_1.csv
│   └── team_view_dataset.csv
│
├── Outputs
│   ├── match_analysis
│   ├── series_analysis
│   ├── opponent_analysis
│   ├── sena_analysis
│   └── timeline_analysis
│
├── Scripts
│   ├── 00_master_dataset_builder.ipynb
│   ├── 01_match_Analysis.ipynb
│   ├── 02_Series_Analysis.ipynb
│   ├── 03_opponent_Analysis.ipynb
│   ├── 04_SENA_Analysis.ipynb
│   └── 05_team_view_dataset_builder.ipynb
│
└── README.md
```


```

---

# ⚙️ Dataset Engineering Workflow

One of the core highlights of this project is the custom analytical data engineering pipeline.

The project involved:

* venue normalization
* city correction
* host country mapping
* home/away classification
* opponent extraction
* SENA identification
* team-centric dataset transformation
* analytical feature engineering

The final engineered dataset

team_view_dataset.csv
```

was specifically designed to support scalable cricket analytics and downstream Power BI visualization.

---

# 📊 Analysis Modules

## 00 — Master Dataset Builder

Builds the foundational master Test cricket datasets.

### Responsibilities

* Raw dataset cleaning
* Venue normalization
* City mapping
* Match validation
* Dataset consolidation

### Outputs

* `master_test_dataset.csv`
* `master_test_dataset_1.csv`

---

## 01 — Match Analysis

Analyzes overall Test match performance trends.

### Analysis Includes

* Win/Loss/Draw distribution
* Home vs Away performance
* Match-level KPIs
* Timeline trends

---

## 02 — Series Analysis

Focuses on series-level cricket performance.

### Analysis Includes

* Home series performance
* Away series trends
* Series win distribution
* Multi-match series comparisons

---

## 03 — Opponent Analysis

Explores opponent-wise performance and rivalry trends.

### Analysis Includes

* Win percentage vs opponents
* Home vs Away rivalry analysis
* Opponent difficulty analysis
* Rivalry trend visualization

---

## 04 — SENA Analysis

Focused overseas performance analysis.

### SENA Nations

* South Africa
* England
* New Zealand
* Australia

### Analysis Includes

* SENA vs Non-SENA comparison
* Overseas adaptability trends
* Country-wise SENA analysis
* Timeline evolution in difficult conditions

---

## 05 — Team View Dataset Builder

Transforms match-level data into a team-centric analytical dataset.

### Responsibilities

* Duplicate match rows per team perspective
* Create country-specific analytical views
* Engineer analytical columns
* Generate Power BI-ready datasets

### Output

* `team_view_dataset.csv`

---

# 📈 Key Insights

* India’s overseas SENA performance improved significantly during the late 2010s.
* Australia and South Africa emerged as the toughest overseas environments.
* Home dominance remained consistently strong across multiple eras.
* Modern Test cricket shows a gradual reduction in draw percentages.
* Away adaptability improved steadily over time.

---

# 📷 Output Visualizations

The `Outputs/` folder contains visualizations generated during analysis, including:

* match performance trends
* opponent comparison visuals
* SENA analysis charts
* timeline evolution plots
* series performance analysis

---

# 🧹 Data Engineering Highlights

### Feature Engineering

* Home/Away/Neutral classification
* SENA identification
* Team-centric row transformation
* Opponent extraction
* Rolling trend preparation

### Data Validation

* Venue verification
* Host country correction
* Duplicate handling
* Match consistency checks

---

# 🚀 Future Improvements

* Player-level analytics
* Captaincy era analysis
* Predictive match modeling
* ICC ranking integration
* Advanced rolling performance metrics
* Interactive web deployment

---

# 🙌 Acknowledgment

This project was developed through a collaborative workflow combining independent analytical development with AI-assisted guidance.

Special thanks to ChatGPT for:

* debugging support
* dataset engineering assistance
* project architecture discussions

The core analysis, engineering decisions, workflow execution, and project development were independently implemented and validated throughout the project lifecycle.

---
