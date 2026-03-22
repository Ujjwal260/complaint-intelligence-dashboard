-- 4.issue summary view

CREATE VIEW vw_issue_summary AS
SELECT
    issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY issue;