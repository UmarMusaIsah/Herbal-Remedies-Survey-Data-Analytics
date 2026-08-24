# SQL Database Development & Analysis

## Overview

This folder contains the complete SQL Server implementation for the **Herbal Remedies Field Survey & Data Analytics Project**.

The SQL module demonstrates the complete database development lifecycle, including database creation, table design, data import, validation, exploratory data analysis, business-driven analysis, and advanced SQL techniques.

The objective of this module is to transform the cleaned survey dataset into a structured SQL database and generate meaningful insights to support data-driven decision-making.

---

# Database Information

| Item | Description |
|------|-------------|
| Database Name | HerbalRemediesDB |
| Table Name | HerbalSurvey |
| Database Management System | Microsoft SQL Server 2022 Express |
| Query Tool | SQL Server Management Studio (SSMS) |
| Dataset | Cleaned Herbal Remedies Survey Dataset |
| Total Records | 60 |

---

# Database Structure

The database contains a single master table:

**HerbalSurvey**

| Column | Description |
|---------|-------------|
| RespondentID | Unique respondent identifier (Primary Key) |
| Gender | Gender of respondent |
| AgeGroup | Age category |
| Location | Respondent location |
| UsesHerbalRemedies | Indicates whether the respondent uses herbal remedies |
| HerbsUsed | Herbal remedies used |
| UsageFrequency | Frequency of herbal remedy usage |
| ReasonForUse | Reason for using herbal remedies |
| HerbSource | Source of herbal remedies |
| IsEffective | Perceived effectiveness |
| EffectivenessLevel | Level of effectiveness |
| HasSideEffects | Presence of side effects |
| CombineWithHospitalMedicine | Combination with conventional medicine |
| RecommendToOthers | Willingness to recommend herbal remedies |

---

# SQL Development Workflow

The SQL development followed the workflow below:

1. Database Creation
2. Table Creation
3. Constraints Implementation
4. Data Import
5. Data Validation
6. Exploratory Data Analysis (EDA)
7. Business Question Analysis
8. Advanced SQL Analysis

---

# Folder Contents

```
03_SQL/

│── README.md
│── 01_Create_Database.sql
│── 02_Create_Table.sql
│── 03_Add_Constraints.sql
│── 04_Import_Data.sql
│── 05_Data_Validation.sql
│── 06_Exploratory_Analysis.sql
│── 07_Business_Questions.sql
│── 08_Advanced_Analysis.sql
```

---

# File Description

## 01_Create_Database.sql

Creates the project database.

---

## 02_Create_Table.sql

Creates the **HerbalSurvey** table with all required columns and data types.

---

## 03_Add_Constraints.sql

Adds the Primary Key and additional integrity constraints to the table.

---

## 04_Import_Data.sql

Imports the cleaned survey dataset into SQL Server.

---

## 05_Data_Validation.sql

Performs data quality checks after import, including record counts and validation queries.

---

## 06_Exploratory_Analysis.sql

Performs descriptive analysis of the dataset, including respondent demographics and survey response distributions.

---

## 07_Business_Questions.sql

Answers analytical questions related to herbal remedy usage, effectiveness, sources, frequency, and respondent behaviour.

---

## 08_Advanced_Analysis.sql

Implements advanced SQL techniques such as conditional aggregation and dashboard-ready KPI calculations.

---

# SQL Concepts Demonstrated

This module demonstrates the practical use of:

- Database Creation
- Table Design
- Primary Keys
- Constraints
- Data Import
- Data Validation
- SELECT Statements
- WHERE Clause
- ORDER BY
- GROUP BY
- Aggregate Functions
- CASE Expressions
- Conditional Aggregation
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- KPI Calculations

---

# Analytical Objectives

The SQL analysis was designed to answer questions such as:

- How many respondents participated in the survey?
- What is the gender distribution?
- Which age group uses herbal remedies the most?
- Which herbal remedies are most commonly used?
- What are the major reasons for using herbal remedies?
- Which sources are commonly used to obtain herbal remedies?
- How frequently are herbal remedies used?
- How effective do respondents perceive herbal remedies to be?
- How many respondents reported side effects?
- How many respondents combine herbal remedies with hospital medicine?
- How many respondents recommend herbal remedies to others?

---

# Output

The SQL queries generate structured outputs that support:

- Exploratory Data Analysis (EDA)
- Survey Summary Statistics
- Business Intelligence Reporting
- Dashboard Development
- Evidence-Based Decision Making

---

# Skills Demonstrated

- SQL Database Development
- Data Cleaning Validation
- Relational Database Design
- Exploratory Data Analysis
- Business Analytics
- Survey Data Analysis
- Health Data Analytics
- Query Optimization
- Analytical Problem Solving

---

# Author

**Umar Musa Isah**

Data Analyst | Monitoring & Evaluation (M&E) Specialist | Power BI Developer

---

**Module Status:** Completed