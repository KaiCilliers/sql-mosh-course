-- Find clients without invoices
-- SELECT *
-- FROM clients
-- WHERE client_id NOT IN (
-- 	SELECT DISTINCT client_id
--     FROM invoices
-- )

-- SELECT *
-- FROM clients
-- -- inner join results in getting only clients that have an invoice
-- -- outer join results in all clients regardless of having an invoice
-- LEFT JOIN invoices USING (client_id)
-- WHERE invoice_id IS NULL

-- You can often re-write a subquery with a join
-- Which to pick?
-- Pick the one that is more readable compared to the problem

-- Exercise
-- Find customers who have ordered lettuce (id 3)
-- Select customer_id, first_name, last_name
-- use a subquery and another solution with a join

-- SELECT *
-- FROM customers
-- WHERE customer_id IN (
-- 	SELECT customer_id
--     FROM order_items oi
--     JOIN orders o USING (order_id)
--     WHERE oi.product_id = 3
-- )

-- More readable in this situation
SELECT
	DISTINCT customer_id,
    first_name,
    last_name
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3








