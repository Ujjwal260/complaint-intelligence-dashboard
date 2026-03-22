-- 3.company summary view

CREATE VIEW vw_company_summary AS
SELECT
    company,
    COUNT(*) AS total_complaints,
    SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_responses,
    SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) AS non_timely_responses,
    ROUND(SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS timely_response_rate
FROM complaints
GROUP BY company;