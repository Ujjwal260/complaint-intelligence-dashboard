-- 1.How many complaints do we have, and what period does the data cover?

SELECT COUNT(*) AS total_complaints,
       MIN(date_received) AS earliest_date,
       MAX(date_received) AS latest_date
FROM complaints;