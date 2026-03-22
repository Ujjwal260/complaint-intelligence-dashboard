-- 10.detailed complaint fact view for Power BI

CREATE VIEW vw_complaints_detail AS
SELECT
    complaint_id,
    date_received,
    DATE_FORMAT(date_received, '%Y-%m') AS `year_month`,
    product,
    sub_product,
    issue,
    sub_issue,
    company,
    state,
    submitted_via,
    timely_response
FROM complaints;