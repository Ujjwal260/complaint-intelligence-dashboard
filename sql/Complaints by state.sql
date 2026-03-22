-- 4.Which states generate the most complaints?

SELECT state,
       COUNT(*) AS complaint_count
FROM complaints
WHERE state <> 'Unknown'
GROUP BY state
ORDER BY complaint_count DESC
LIMIT 10;