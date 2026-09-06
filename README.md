# Healthcare Data Analytics & Reporting System

## Portfolio Project — Data Analyst

**Purpose:** Demonstrate an end-to-end healthcare analytics workflow using SQL, Python, and Power BI-ready data.

> This project uses **synthetic/de-identified data created for portfolio demonstration**. No real patient information is included.

## Business Problem
Healthcare leadership needs a simple way to monitor patient wait times, readmissions, length of stay, medication-error patterns, and patient satisfaction across departments.

## Tools
- SQL (PostgreSQL-compatible queries)
- Python (Pandas, NumPy)
- Power BI (dashboard-ready dataset)
- Excel/Power Query concepts

## Workflow
1. Load healthcare encounter data.
2. Profile and clean missing/inconsistent values.
3. Calculate operational and clinical KPIs.
4. Analyze trends by department and admission type.
5. Prepare a reporting dataset for Power BI.
6. Present findings and recommendations.

## Key KPIs
- Average patient wait time
- 30-day readmission rate
- Average length of stay
- Medication error rate
- Average patient satisfaction

## Project Structure
```text
data/
  healthcare_patient_analytics.csv
sql/
  healthcare_kpi_analysis.sql
python/
  healthcare_analysis.py
docs/
  video_walkthrough_script.md
README.md
```

## How to Run
1. Open the CSV in Excel or load it into PostgreSQL.
2. Run the SQL file for KPI queries.
3. Run the Python script to generate summary outputs.
4. Import the CSV into Power BI and build KPI cards plus department-level charts.

## Important
This is a portfolio demonstration project. In an interview, describe it accurately as a **solo healthcare analytics project using synthetic/de-identified data**.
