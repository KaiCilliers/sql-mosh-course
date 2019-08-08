-- SELECT
-- 	SUM(invoice_total) as total_sales
-- FROM invoices

-- SELECT
-- 	client_id,
-- 	SUM(invoice_total) as total_sales
-- FROM invoices
-- WHERE invoice_date >= '2019-07-01'
-- GROUP BY client_id
-- ORDER BY total_sales DESC

-- SELECT
-- 	state,
--     city,
-- 	SUM(invoice_total) as total_sales
-- FROM invoices
-- JOIN clients USING (client_id)
-- GROUP BY state, city

-- Exercise
-- columns: date, payment_method, total_payments
-- tables: payment_methods, payments
-- on day x there was Rx total payments via Credit Card