-- 11.What issues dominate within each product category?

SELECT product,
       issue,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY product, issue
ORDER BY product, complaint_count DESC;