# Daxwell Data Analyst — 5–10 Minute Video Walkthrough

## 0:00–0:45 — Introduction
"Hi, my name is Parkulam Sahithya. This is my solo Healthcare Data Analytics and Reporting System project. I built it to demonstrate how I use SQL and Python to clean healthcare data, calculate KPIs, identify operational trends, and prepare data for BI reporting."

## 0:45–1:30 — Business Problem
"The business problem is to help healthcare leadership monitor patient wait times, 30-day readmissions, length of stay, medication-error patterns, and patient satisfaction across departments."

## 1:30–2:15 — Data
"The project uses synthetic, de-identified healthcare records. The dataset contains patient-level analytical fields such as department, admission type, wait time, length of stay, readmission indicator, medication errors, and satisfaction score. No real patient information is used."

## 2:15–3:30 — Python
"Here I use Pandas to load and profile the data. I check missing values and clean them using appropriate median-based treatment for numeric fields. Then I calculate overall KPIs and create department-level summaries."

Show: python/healthcare_analysis.py

## 3:30–5:00 — SQL
"I also created SQL queries for the main reporting requirements. These queries calculate average wait time, readmission rate, length of stay, medication-error rate, and an overall KPI summary. I would use these queries as the analytical layer behind a reporting solution."

Show: sql/healthcare_kpi_analysis.sql

## 5:00–6:30 — BI / Dashboard
"In Power BI, I would load the cleaned dataset and create KPI cards for total records, average wait time, readmission rate, average length of stay, medication-error rate, and satisfaction. I would then add department comparisons and admission-type analysis."

If you build the dashboard, show it here.

## 6:30–7:30 — Insights
"The analysis helps identify departments with higher wait times or readmission rates and provides a starting point for operational investigation. The goal is not only to report numbers, but to turn them into actionable questions for healthcare operations."

## 7:30–8:15 — Technical Summary
"This project demonstrates an end-to-end workflow: data loading, profiling, cleaning, SQL analysis, Python analysis, KPI generation, and BI-ready reporting. The same workflow can be extended to real healthcare datasets while following HIPAA and data-governance requirements."

## 8:15–8:45 — Closing
"Thank you for reviewing my project. I would be happy to walk through any part of the analysis, SQL logic, Python code, or dashboard design in more detail."
