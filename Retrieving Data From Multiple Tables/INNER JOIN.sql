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
