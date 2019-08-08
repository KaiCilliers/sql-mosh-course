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

SELECT
	p.date,
    pm.name,
    SUM(amount) as total_payments
FROM payments p
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
GROUP BY p.date, p.payment_method
ORDER BY p.date