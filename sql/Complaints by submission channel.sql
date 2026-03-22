-- 5.How are customers submitting complaints?

SELECT submitted_via,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY submitted_via
ORDER BY complaint_count DESC;