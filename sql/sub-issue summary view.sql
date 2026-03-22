-- 5.sub-issue summary view

CREATE VIEW vw_sub_issue_summary AS
SELECT
    sub_issue,
    COUNT(*) AS complaint_count
FROM complaints
GROUP BY sub_issue;