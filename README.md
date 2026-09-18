# USA-Universities-Admission-Application-Analytics

## 📌 Project Overview

This project analyzes university admission and application data from the USA to understand application patterns, admission outcomes, university-level performance, applicant scores, and work experience.

The project follows a complete **data analytics workflow** using **Excel, MySQL, and Tableau**. 📊

---

## 🛠️ Tools & Technologies

- 📗 **Excel** – Data cleaning and preparation
- 🗄️ **MySQL** – Data analysis and SQL queries
- 📊 **Tableau** – Interactive dashboard and data visualization
- 🐙 **GitHub** – Project documentation and version control

---

## 🔄 Project Workflow

### 1️⃣ Data Cleaning – Excel 🧹

The dataset was cleaned and prepared in Excel before performing the analysis.

Key data preparation steps included:

- 🗑️ Removing duplicate records
- 🔍 Checking for missing and blank values
- 🔢 Correcting data types
- ✏️ Standardizing text values
- 📅 Checking year and season values
- 📋 Reviewing application status values
- 🎯 Checking GRE and English test scores
- 🎓 Reviewing undergraduate score metrics
- 🔎 Checking data consistency

---

### 2️⃣ Data Analysis – MySQL 🗄️

The cleaned dataset was imported into MySQL for analysis.

The analysis focused on:

1. 📌 Total number of university records
2. 🎯 Average GRE score of applicants
3. 📝 Average English test score
4. 💼 Applicant work experience
5. 📊 Application status distribution
6. 🏫 University-wise application volume
7. 📈 Year-wise average GRE score trend
8. 🏆 University-wise average GRE scores
9. ✅ Admission percentage
10. ❌ Rejection percentage
11. 🎓 Undergraduate performance by scoring metric
12. 🔎 Application factors by application status
13. 📊 University status and score comparison

SQL views were created to organize the analysis and make the results easier to use.

---

## 📊 Tableau Dashboard

The final analysis was visualized in Tableau through an interactive dashboard.

### 🇺🇸 Dashboard Title

**USA Universities: Admission & Application Analytics**

The dashboard provides insights into:

- ✅ Admission percentage
- ❌ Rejection percentage
- 📈 Year-wise average score trends
- 🏫 University status by score
- 🏆 University-wise average scores
- 🎓 Undergraduate score metrics
- 📊 GRE, TOEFL, and IELTS comparisons

### 🎛️ Interactive Filters

The dashboard includes filters to explore the data by:

- 🏫 University
- 📋 Application Status
- 🍂 Season

---

## 🔍 Key Insights

Based on the analysis:

- 📊 The dataset contains **1,325 university application records**.
- 🎯 The overall average GRE score of applicants with available GRE scores is approximately **308.74**.
- 📝 TOEFL and IELTS scores were analyzed separately because they use different scoring scales.
- 🏫 University-wise application volumes were compared to understand application patterns.
- 📈 Year-wise GRE score trends were analyzed to understand changes over time.
- ✅ Admission percentages were calculated using applications with **Admit** status.
- ❌ Rejection percentages were calculated using applications with **Reject** status.
- 💼 Applicant work experience was analyzed in months.
- 🎓 Undergraduate performance was analyzed separately for **CGPA** and **percentage-based** records.

---

## 📈 Key Metrics

| 📌 Metric | 📝 Description |
|---|---|
| 📊 Total Records | Total number of university application records |
| 🎯 Average GRE | Average GRE score of applicants |
| 📝 Average TOEFL | Average TOEFL score |
| 📝 Average IELTS | Average IELTS score |
| 📋 Application Status | Applied, Admit, Reject, and Interested |
| 🏫 University Applications | Applications received by each university |
| ✅ Admission Rate | Percentage of applications with Admit status |
| ❌ Rejection Rate | Percentage of applications with Reject status |
| 💼 Work Experience | Applicant work experience in months |
| 📈 Year-wise Trend | Average score trend across years |

---

## 📂 Dataset

The dataset contains university application information including:

- 🏫 University
- 📚 Course
- 📅 Year
- 🍂 Season
- 📋 Application Status
- 🎯 GRE Score
- 📝 English Test
- 📊 English Test Score
- 🎓 Undergraduate Score
- 📏 Undergraduate Score Metric
- 💼 Work Experience

---

## 🧮 Data Analysis Approach

### 🎯 GRE Score Analysis

The average GRE score was calculated using available GRE score records while excluding blank values.

### 📝 English Test Analysis

English test scores were analyzed separately for:

- TOEFL
- IELTS

This avoids directly combining scores from different scoring systems.

### 📋 Application Status Analysis

Application records were grouped according to:

- Applied
- Admit
- Reject
- Interested

### 🏫 University Analysis

University-level analysis was performed to understand:

- Application volume
- Average scores
- Application status
- Score comparison

### 📈 Year-wise Analysis

Year-wise analysis was performed to identify changes in applicant scores over time.

### 💼 Work Experience Analysis

Applicant work experience was analyzed in months to understand the experience distribution.

---

## 🗄️ MySQL Views

SQL views were created to organize the analytical results.

Some of the analytical views include:

- 📊 Total Records
- 🎯 Average GRE Score
- 📝 Average English Score
- 💼 Work Experience
- 📋 Application Status
- 🏫 University Applications
- 📈 Year-wise GRE Trend
- 🏆 University-wise GRE Scores
- ✅ Admission Percentage
- ❌ Rejection Percentage
- 🎓 Undergraduate Score Analysis
- 🔎 Admission Factors
- 📊 University Status and Score Analysis

---

## 📁 Project Structure

```text
USA-University-Admission-Application-Analytics/
│
├── 📄 README.md
│
├── 📂 Data/
│   └── 📊 university_analysis_data.csv
│
├── 📂 SQL/
│   └── 🗄️ USA_University_Analysis.sql
│
└── 📂 Tableau/
    └── 📊 USA_University_Analysis_Dashboard.twb
