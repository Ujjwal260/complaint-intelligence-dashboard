-- 1.Monthly KPI view

DROP VIEW IF EXISTS vw_monthly_complaint_kpis;

CREATE VIEW vw_monthly_complaint_kpis AS
SELECT 
    DATE_FORMAT(date_received, '%Y-%m') AS `year_month`,
    COUNT(*) AS total_complaints,
    SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_responses,
    SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) AS non_timely_responses,
    ROUND(SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS timely_response_rate
FROM complaints
GROUP BY DATE_FORMAT(date_received, '%Y-%m');