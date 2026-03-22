-- 6.state summary view

CREATE VIEW vw_state_summary AS
SELECT
    state,
    COUNT(*) AS total_complaints
FROM complaints
WHERE state IS NOT NULL
  AND state <> ''
  AND state <> 'Unknown'
GROUP BY state;