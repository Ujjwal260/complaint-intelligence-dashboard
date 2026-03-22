-- 8.How often are complaints responded to on time?

SELECT timely_response,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY timely_response
ORDER BY complaint_count DESC;