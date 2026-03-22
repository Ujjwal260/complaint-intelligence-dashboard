-- 10. What are the most common complaint issues overall?

SELECT issue,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY issue
ORDER BY complaint_count DESC
LIMIT 15;