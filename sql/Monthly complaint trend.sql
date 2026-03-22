-- 6.Is complaint volume rising or falling over time?

SELECT DATE_FORMAT(date_received, '%Y-%m') AS `year_month`,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY `year_month`
ORDER BY `year_month`;