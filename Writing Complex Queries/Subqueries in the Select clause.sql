-- SELECT
-- 	invoice_id,
--     invoice_total
-- FROM invoices

-- SELECT
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) AS invoice_average,
--         -- this is a nono. Cant use an alias in an expression
-- 	-- invoice_total - invoice_average
--     -- option 1
-- --     invoice_total - (SELECT AVG(invoice_total)
-- -- 		FROM invoices)
-- 	-- option 2
--     invoice_total - (SELECT invoice_average) AS difference
-- FROM invoices

-- Neat
-- SELECT
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) AS invoice_average,
--     invoice_total - (SELECT invoice_average) AS difference
-- FROM invoices


-- Exercise
-- Columns: client_id, name, total_sales (sum of all invoices for client),
-- average of all invoices, difference
-- Show all clients

-- My Solution
-- SELECT
-- 	c.client_id,
--     c.name,
--     SUM(i.invoice_total) as total_sales,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) as average,
-- 	SUM(i.invoice_total) - (SELECT average) as difference
-- FROM clients c
-- LEFT JOIN invoices i USING (client_id)
-- GROUP BY c.client_id

SELECT
	client_id,
    name,
    (SELECT SUM(invoice_total) -- correlated subquery
		FROM invoices
        WHERE client_id = c.client_id) as total_sales,
	(SELECT AVG(invoice_total) FROM invoices) as average,
    (SELECT total_sales - average) as difference
FROM clients c

