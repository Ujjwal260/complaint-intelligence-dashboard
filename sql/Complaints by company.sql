-- 3.Which companies receive the most complaints?

SELECT company,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY company
ORDER BY complaint_count DESC
LIMIT 10;