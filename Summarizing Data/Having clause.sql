-- SELECT
-- 	client_id,
--     SUM(invoice_total) as total_sales
-- FROM invoices
-- GROUP BY client_id

-- problem: displaying records with total sales > 500
-- total sales. Up unitl this point we dont know the totals
-- for each client. You only group after the WHERE
-- SELECT
-- 	client_id,
--     SUM(invoice_total) as total_sales
-- FROM invoices
-- -- WhERE total_sales > 500 is not gonna work
-- GROUP BY client_id

-- HAVING is used to filter after group by
-- group our rows
-- SELECT
-- 	client_id,
--     SUM(invoice_total) as total_sales
-- FROM invoices
-- GROUP BY client_id
-- HAVING total_sales > 500

-- WHERE - filter data before grouping our rows
-- HAVING - filter data after grouping the rows
-- SELECT
-- 	client_id,
--     SUM(invoice_total) as total_sales,
--     COUNT(*) as number_of_invoices
-- FROM invoices
-- GROUP BY client_id
-- HAVING total_sales > 500
--     AND number_of_invoices > 5

-- Exercise
-- get the customers
--  located in Virginia
-- 	who spen more than $100

USE sql_store;

-- SELECT
-- 	 c.first_name as customers,
--      oi.quantity * oi.unit_price as spent
-- FROM orders o
-- JOIN customers c
-- 	USING (customer_id)
-- JOIN order_items oi
-- 	USING(order_id)
-- WHERE c.state = 'VA'
-- GROUP BY c.first_name
-- HAVING spent > 0


SELECT
	c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) as total_sales
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE state = 'VA'
GROUP BY
	c.customer_id,
    c.first_name,
    c.last_name
HAVING total_sales > 125




