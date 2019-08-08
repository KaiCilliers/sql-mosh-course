-- SELECT
-- 	o.order_id,
--     c.first_name,
--     sh.name AS shipper
-- FROM orders o
-- JOIN customers c
-- 	-- if the below columns are the same, you can replace ON with USING
-- 	-- ON o.customer_id = c.customer_id
--     USING (customer_id)
-- LEFT JOIN shippers sh
-- 	USING (shipper_id)

-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	ON oi.order_id = oin.order_id AND
-- 		oi.product_id = oin.product_id

-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- 	USING (order_id, product_id)

-- Exercise
-- Columns: date, client_name, amount, payment_methods
-- Tables: payment methods, clients, payments