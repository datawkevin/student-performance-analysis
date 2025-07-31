# Student Performance Analysis

**Author:** Kevin Topi  
**Date:** 2025-07-31

This project explores how different types of educational support and extracurricular activities impact final grades in Math and Portuguese, using the [UCI Student Performance dataset](https://archive.ics.uci.edu/dataset/320/student+performance).

---

## Table of Contents
- [Introduction](#introduction)
- [Data & Methods](#data--methods)
- [Key Findings](#key-findings)
- [Visual Summary](#visual-summary)
- [How to Reproduce](#how-to-reproduce)
- [Recommendations](#recommendations)
- [Full Analysis](#full-analysis)
- [License](#license)
- [Contact](#contact)

---

## Introduction

This analysis explores how different types of preparation and extracurricular activities influence students’ final grades in Math and Portuguese. By examining the effects of school and family support, paid lessons, and extracurricular participation, the project provides actionable insights for educators and policymakers.

---

## Data & Methods

- **Data Source:** [UCI Student Performance Dataset](https://archive.ics.uci.edu/dataset/320/student+performance)
- **Sample Size:** 382 matched students from both math and Portuguese datasets (merged on demographic and family variables).
- **Predictors:** School support, family support, paid classes, extracurricular activities.
- **Outcome:** Final grade (0–20 scale) in each subject.

---

## Key Findings

- **Family educational support** is the most consistent and influential factor for higher grades in both subjects.
- **School support** and **paid tutoring** are often targeted at struggling students and do not consistently improve grades.
- **Extracurricular activities** have a weak or modest positive association with Portuguese grades, but little effect on math scores.

---

## Visual Summary

*(Be sure to save your plots as images in a `figures/` folder and update the paths below!)*

**Math: Family Support**
![Math Score by Family Support](figures/math_family_support.png)

**Portuguese: Extracurricular Activities**
![Portuguese Score by Extracurricular Activities](figures/portuguese_activities.png)

---

## How to Reproduce

1. **Clone this repository**
    ```sh
    git clone https://github.com/datawkevin/student-performance-analysis.git
    ```
2. **Open the project in RStudio**  
   (Open `Student Performance.Rproj`)
3. **Install required R packages**
    ```r
    install.packages(c("tidyverse", "janitor", "ggplot2"))
    ```
4. **Run the analysis**
   - Knit or run the code in `student_performance_analysis.Rmd`.

---

## Recommendations

- **Prioritize family engagement** for academic success.
- **Evaluate and personalize** support programs—target interventions for best results.
- **Encourage extracurricular participation** for holistic student development.

---

## Full Analysis

See [`student_performance_analysis.Rmd`](student_performance_analysis.Rmd) for all code, data cleaning, EDA, modeling, and detailed outputs.

---