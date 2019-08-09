-- SELECT employees whose salary is
-- above average in their office

-- psuedo code of problem
-- for each employee
-- 		calculate the avg salary for employee.office
-- 		return the employee if salary > avg

-- correlated subqueries, because the inner query has a
-- correlation (reference) with the outer query
-- using the table alias
-- the subquery will be executed multiple times
-- ie. executed for each row of the outer query
-- all other subqueries get executed once and is
-- an uncorrelated subquery
-- Correlated subqueries can be slow
-- SELECT *
-- FROM employees e
-- WHERE salary > (
-- 	SELECT AVG(SALARY)
--     FROM employees
--     WHERE office_id = e.office_id
-- )

-- Exercise
-- Get invoices that are larger than the
-- client's average invoice amount

USE sql_invoicing;










