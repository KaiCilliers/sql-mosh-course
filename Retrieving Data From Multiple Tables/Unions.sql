-- Combine results from multiple Queries
-- Results will be added as new rows
-- The column amount has to be equal of each table
-- Column name is from tbl_1's column
-- SELECT
-- 	order_id,
--     order_date,
--     'Active' AS status
-- FROM orders
-- WHERE order_date >= '2019-01-01'
-- UNION
-- SELECT
-- 	order_id,
--     order_date,
--     'Archived' AS status
-- FROM orders
-- WHERE order_date < '2019-01-01'

-- SELECT first_name as full_name
-- FROM customers -- better example table is archived_orders
-- UNION
-- SELECT name
-- FROM shippers -- better example table is orders

-- Exercise
-- columns: customer_id, first_name, points, type
-- type: <2000 points = bronze
-- 	2000 - 3000 points = silver
--     >3000 = gold
-- sorted by first_name

SELECT
	customer_id,
    first_name,
    points,
    'BRONZE' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'SILVER' AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT
	customer_id,
    first_name,
    points,
    'GOLD' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name