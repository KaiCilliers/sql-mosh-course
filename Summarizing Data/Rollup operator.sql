-- WITH ROLLUP is unique to MySQL
-- summarizes data
-- SELECT
-- 	state,
--     city,
--     SUM(invoice_total) as total_sales
-- FROM invoices i
-- JOIN clients c USING (client_id)
-- GROUP BY state, city WITH ROLLUP

-- You the total of all cities in a state
-- and you get the total of all states

-- Exercise
-- table: payments
-- columns: payment_method and total
-- show total of all totals

SELECT
	pm.name as payment_method,
    SUM(p.amount) as total
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP