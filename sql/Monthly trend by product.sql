-- 7.Which products are driving complaint increases over time?

SELECT DATE_FORMAT(date_received, '%Y-%m') AS `year_month`,
       product,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY DATE_FORMAT(date_received, '%Y-%m'), product
ORDER BY `year_month`, complaint_count DESC;