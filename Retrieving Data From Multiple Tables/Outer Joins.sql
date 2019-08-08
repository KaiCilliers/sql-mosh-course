
-- SELECT
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id

-- SELECT
-- 	c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM orders o
-- LEFT JOIN customers c
-- 	ON c.customer_id = o.customer_id
-- ORDER BY c.customer_id

-- Exercise
-- show all products regardless of not having been ordered
-- products table, orders item
-- show product id, product name, quantity

-- SELECT
-- 	p.product_id,
--     p.name,
--     oi.quantity
-- FROM products p
-- LEFT JOIN order_items oi
-- 	ON p.product_id = oi.product_id


-- Best practice, always use left join and try not to use right join
-- SELECT
-- 	c.customer_id,
--     c.first_name,
--     o.order_id,
--     sh.name as shipper
-- FROM customers c
-- LEFT JOIN orders o -- paste orders onto customers
-- 	ON o.customer_id = c.customer_id
-- LEFT JOIN shippers sh -- paste shippers onto orders
-- 	ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id

-- Exercise
-- Tables: order_items, order_statuses, 
-- Required fields: order_date, order_id, first_name, shipper, status
SELECT
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name AS shipper,
    os.name as status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id