-- 9.top issue per product view

CREATE VIEW vw_top_issue_per_product AS
WITH issue_counts AS (
    SELECT
        product,
        issue,
        COUNT(*) AS complaint_count,
        ROW_NUMBER() OVER (PARTITION BY product ORDER BY COUNT(*) DESC) AS rn
    FROM complaints
    GROUP BY product, issue
)
SELECT
    product,
    issue,
    complaint_count
FROM issue_counts
WHERE rn = 1;