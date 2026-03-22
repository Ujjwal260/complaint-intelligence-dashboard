-- 15.Which products are operationally riskier?

SELECT product,
       COUNT(*) AS total_complaints,
       SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) AS non_timely_complaints,
       ROUND(SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS non_timely_rate
FROM complaints
GROUP BY product
ORDER BY non_timely_rate DESC, total_complaints DESC;