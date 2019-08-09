-- SELECT
-- 	client_id,
--     name,
--     (SELECT SUM(invoice_total)
-- 		FROM invoices
--         WHERE client_id = c.client_id) as total_sales,
--     (SELECT AVG(invoice_total) FROM invoices) as average,
--     (SELECT total_sales - average) as difference
-- FROM clients c

-- SELECT *
-- FROM (
-- 	SELECT
-- 		client_id,
-- 		name,
-- 		(SELECT SUM(invoice_total)
-- 			FROM invoices
-- 			WHERE client_id = c.client_id) as total_sales,
-- 		(SELECT AVG(invoice_total) FROM invoices) as average,
-- 		(SELECT total_sales - average) as difference
-- 	FROM clients c
-- ) as sales_summary -- this part is required, you need an alias for this 'new' table

-- Views can make this code simpler
-- by storing the subquery result as its own table and just call it
SELECT *
FROM (
	SELECT
		client_id,
		name,
		(SELECT SUM(invoice_total)
			FROM invoices
			WHERE client_id = c.client_id) as total_sales,
		(SELECT AVG(invoice_total) FROM invoices) as average,
		(SELECT total_sales - average) as difference
	FROM clients c
) as sales_summary
WHERE total_sales IS NOT NULL