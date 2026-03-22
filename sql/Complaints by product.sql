-- 2.Which products generate the highest complaint volumes?

SELECT product,
       COUNT(*) AS complaint_count
FROM complaints
GROUP BY product
ORDER BY complaint_count DESC;