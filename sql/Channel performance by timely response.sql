-- 14.Do some submission channels have worse response performance?

SELECT submitted_via,
       COUNT(*) AS total_complaints,
       SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_yes,
       ROUND(SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS timely_response_rate
FROM complaints
GROUP BY submitted_via
ORDER BY timely_response_rate ASC;