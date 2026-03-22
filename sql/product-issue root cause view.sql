-- 8.product-issue root cause view

CREATE VIEW vw_product_issue_summary AS
SELECT
    product,
    issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY product, issue;