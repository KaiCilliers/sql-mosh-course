USE sql_invoicing;

-- SELECT
-- 	c.client_id,
--     c.name,
--     SUM(invoice_total) as total_sales
-- FROM clients c
-- JOIN invoices i USING (client_id)
-- GROUP BY c.client_id

-- CREATE VIEW sales_by_client AS
-- SELECT
-- 	c.client_id,
--     c.name,
--     SUM(invoice_total) as total_sales
-- FROM clients c
-- JOIN invoices i USING (client_id)
-- GROUP BY c.client_id

-- call like normal table
-- SELECT *
-- FROM sales_by_client
-- WHERE total_sales > 500
-- ORDER BY total_sales DESC

-- SELECT *
-- FROM sales_by_client
-- JOIN clients USING (client_id)


-- Exercise
-- Create a view to see the balance
-- for each client. Called clients_balance
-- client_id, name, balance