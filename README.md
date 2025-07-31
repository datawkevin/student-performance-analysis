# Impact of Test Preparation and Extracurricular Activities on Student Performance

**Author:** Kevin Topi  
**Date:** 2025-07-31

---

## Overview

This project analyzes how different types of educational support (family support, school support, paid tutoring) and extracurricular activities affect student performance in Math and Portuguese. The analysis uses data from the [UCI Machine Learning Repository: Student Performance Data Set](https://archive.ics.uci.edu/dataset/320/student+performance).

---

## Objectives

- Understand the effect of support and activities on student grades.
- Compare findings between Math and Portuguese.
- Provide recommendations for educators and policymakers.

---

## Data Source

- [UCI Student Performance Data Set](https://archive.ics.uci.edu/dataset/320/student+performance)  
- [Direct download link (student.zip)](https://archive.ics.uci.edu/static/public/320/student+performance.zip)

---

## Project Files

- **student_performance_analysis.Rmd**: Main RMarkdown analysis file.
- **student_performance_analysis.html**: Knitted HTML report (open in a web browser to view results).
- **README.md**: This project description and guide.

---

## Project Structure

- `00_merge_data.R`: Merges raw datasets into a single file for analysis.
- `01_data_cleaning.R`: Cleans the merged data and prepares it for analysis.
- `02_eda_visualizations_math.R`: Exploratory data analysis and visualizations for math scores.
- `03_regression_model_math.R`: Regression modeling for math scores.
- `04_eda_visualizations_por.R`: Exploratory data analysis and visualizations for Portuguese scores.
- `05_regression_model_por.R`: Regression modeling for Portuguese scores.

---

## How to Run

1. Download the dataset and extract it into a folder named `student_performance_dataset`.
2. Open `student_performance_analysis.Rmd` in RStudio.
3. Install required packages if you don’t have them:
   ```r
   install.packages(c("tidyverse", "janitor"))


