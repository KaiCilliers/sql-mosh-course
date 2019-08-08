USE sql_hr;

-- Problem here is that you don't display Yovannda's record
-- SELECT
-- 	e.employee_id,
--     e.first_name,
--     m.first_name as manager
-- FROM employees e
-- JOIN employees m
-- 	ON e.reports_to = m.employee_id

SELECT
	e.employee_id,
    e.first_name,
    m.first_name as manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id