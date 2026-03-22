--  9.Which companies have weaker response performance?

SELECT company,
       COUNT(*) AS total_complaints,
       SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_yes,
       ROUND(SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS timely_response_rate
FROM complaints
GROUP BY company
HAVING COUNT(*) >= 100
ORDER BY timely_response_rate ASC;