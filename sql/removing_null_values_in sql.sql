SELECT COUNT(*) AS total_rows
FROM complaints;

SELECT *
FROM complaints
LIMIT 5;


UPDATE complaints
SET sub_issue = 'Unknown'
WHERE sub_issue IS NULL;

UPDATE complaints
SET sub_product = 'Unknown'
WHERE sub_product IS NULL;


SELECT product, COUNT(*) AS complaints
FROM complaints
GROUP BY product
ORDER BY complaints DESC;


SELECT company, COUNT(*) AS complaints
FROM complaints
GROUP BY company
ORDER BY complaints DESC
LIMIT 10;
UPDATE complaints
SET complaint_text = ''
WHERE complaint_text IS NULL;

SELECT
SUM(sub_issue IS NULL) AS sub_issue_nulls,
SUM(sub_product IS NULL) AS sub_product_nulls,
SUM(complaint_text IS NULL) AS complaint_text_nulls
FROM complaints;