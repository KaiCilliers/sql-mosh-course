-- WITH ROLLUP is unique to MySQL
-- summarizes data
SELECT
	state,
    city,
    SUM(invoice_total) as total_sales
FROM invoices i
JOIN clients c USING (client_id)
GROUP BY state, city WITH ROLLUP

-- You the total of all cities in a state
-- and you get the total of all states

-- Exercise
-- table: payments
-- columns: payment_method and total
-- show total of all totals