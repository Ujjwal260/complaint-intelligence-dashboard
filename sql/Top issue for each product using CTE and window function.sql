-- 12.What is the single biggest issue within each product category?

WITH issue_counts AS (
    SELECT product,
           issue,
           COUNT(*) AS complaint_count,
           ROW_NUMBER() OVER (PARTITION BY product ORDER BY COUNT(*) DESC) AS rn
    FROM complaints
    GROUP BY product, issue
)
SELECT product,
       issue,
       complaint_count
FROM issue_counts
WHERE rn = 1
ORDER BY complaint_count DESC;

