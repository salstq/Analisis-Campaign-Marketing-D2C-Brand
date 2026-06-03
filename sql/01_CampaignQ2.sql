SELECT name,
       type,
       start_date,
       end_date,
       total_budget
FROM campaigns
WHERE start_date <= '2026-06-30'
  AND end_date >= '2026-04-01'
ORDER BY start_date ASC;