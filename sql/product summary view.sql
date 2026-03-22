-- 2.product summary view

DROP VIEW IF EXISTS vw_product_summary;

CREATE VIEW vw_product_summary AS
SELECT
    product,
    COUNT(*) AS total_complaints,
    SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_responses,
    SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) AS non_timely_responses,
    ROUND(SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS timely_response_rate,
    ROUND(SUM(CASE WHEN timely_response = 'No' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS non_timely_rate
FROM complaints
GROUP BY product;