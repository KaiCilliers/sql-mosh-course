-- SELECT first_name, last_name, 10 AS points
-- FROM customers
-- ORDER BY first_name
-- ORDER BY first_name DESC
-- ORDER BY state, first_name
-- ORDER BY state DESC, first_name
-- ORDER BY points

-- Exercise
-- order id must be 2
-- sort by total price in descending order

SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC