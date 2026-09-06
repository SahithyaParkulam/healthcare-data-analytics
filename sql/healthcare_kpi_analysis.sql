-- Healthcare Data Analytics & Reporting System
-- PostgreSQL-compatible examples

-- 1. Average wait time by department
SELECT
    department,
    ROUND(AVG(wait_time_minutes)::numeric, 2) AS avg_wait_time_minutes
FROM healthcare_patient_analytics
WHERE wait_time_minutes IS NOT NULL
GROUP BY department
ORDER BY avg_wait_time_minutes DESC;

-- 2. 30-day readmission rate by department
SELECT
    department,
    ROUND(100.0 * AVG(readmitted_30d), 2) AS readmission_rate_pct
FROM healthcare_patient_analytics
GROUP BY department
ORDER BY readmission_rate_pct DESC;

-- 3. Average length of stay
SELECT
    department,
    ROUND(AVG(length_of_stay)::numeric, 2) AS avg_length_of_stay
FROM healthcare_patient_analytics
GROUP BY department
ORDER BY avg_length_of_stay DESC;

-- 4. Medication error rate
SELECT
    department,
    ROUND(100.0 * AVG(medication_errors), 2) AS medication_error_rate_pct
FROM healthcare_patient_analytics
GROUP BY department
ORDER BY medication_error_rate_pct DESC;

-- 5. Overall KPI summary
SELECT
    COUNT(*) AS total_records,
    ROUND(AVG(wait_time_minutes)::numeric, 2) AS avg_wait_time,
    ROUND(100.0 * AVG(readmitted_30d), 2) AS readmission_rate_pct,
    ROUND(AVG(length_of_stay)::numeric, 2) AS avg_length_of_stay,
    ROUND(100.0 * AVG(medication_errors), 2) AS medication_error_rate_pct,
    ROUND(AVG(satisfaction_score)::numeric, 2) AS avg_satisfaction
FROM healthcare_patient_analytics;
