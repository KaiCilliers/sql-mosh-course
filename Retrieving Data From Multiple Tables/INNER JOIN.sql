-- SELECT *
-- -- you want to join the customers table with the orders table
-- FROM orders
-- JOIN customers
-- 	ON orders.customer_id = customers.customer_id -- criteria

-- SELECT order_id, orders.customer_id, first_name, last_name
-- -- you want to join the customers table with the orders table
-- FROM orders
-- JOIN customers
-- 	ON orders.customer_id = customers.customer_id -- criteria

-- SELECT order_id, o.customer_id, first_name, last_name
-- you want to join the customers table with the orders table
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id -- criteria

-- Exercise
-- join order_items and products
-- select product id and name with quantity and unit price

-- Why there is unit_price in two tables
-- Unit price of product can change frequently enough to warrant duplication
-- The unit price in order_items is the price the product was at that time
-- The unit price in the products table is the most recent price
-- Becasue we are showing orders, we need to use the older prices and not the (possibly) updated prices
SELECT order_id, p.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id