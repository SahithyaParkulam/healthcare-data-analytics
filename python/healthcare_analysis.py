import pandas as pd

FILE = "../data/healthcare_patient_analytics.csv"

df = pd.read_csv(FILE)

# Basic profiling
print("Rows:", len(df))
print("\nMissing values:")
print(df.isna().sum())

# Data cleaning
df["wait_time_minutes"] = df["wait_time_minutes"].fillna(
    df["wait_time_minutes"].median()
)
df["satisfaction_score"] = df["satisfaction_score"].fillna(
    df["satisfaction_score"].median()
)

# KPI calculations
summary = {
    "total_records": len(df),
    "avg_wait_time_minutes": round(df["wait_time_minutes"].mean(), 2),
    "readmission_rate_pct": round(df["readmitted_30d"].mean() * 100, 2),
    "avg_length_of_stay": round(df["length_of_stay"].mean(), 2),
    "medication_error_rate_pct": round(df["medication_errors"].mean() * 100, 2),
    "avg_satisfaction": round(df["satisfaction_score"].mean(), 2),
}

print("\nOverall KPIs:")
for k, v in summary.items():
    print(f"{k}: {v}")

# Department analysis
dept = (
    df.groupby("department")
      .agg(
          avg_wait_time=("wait_time_minutes", "mean"),
          readmission_rate=("readmitted_30d", "mean"),
          avg_los=("length_of_stay", "mean"),
          medication_error_rate=("medication_errors", "mean"),
          avg_satisfaction=("satisfaction_score", "mean"),
      )
      .reset_index()
)

dept["readmission_rate"] *= 100
dept["medication_error_rate"] *= 100

print("\nDepartment KPIs:")
print(dept.round(2).to_string(index=False))

dept.to_csv("../data/department_kpi_summary.csv", index=False)
print("\nSaved: ../data/department_kpi_summary.csv")
