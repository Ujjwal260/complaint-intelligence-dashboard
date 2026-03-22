-- 13.What are the detailed sub-issues behind the broader issue categories?

SELECT sub_issue,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY sub_issue
ORDER BY complaint_count DESC
LIMIT 15;