-- SELECT *
-- FROM customers;

-- SELECT	
-- 	last_name,
--     first_name,
--     points,
--     points + 10,
--     (points + 10) * 100 AS 'discount factor'
-- FROM customers;

-- SELECT DISTINCT state
-- FROM customers

-- Return all the products
-- 	name
--     unit price
--     new price (unit price * 1.1)

SELECT
	name,
    unit_price,
    unit_price * 1.1 AS 'new price'
FROM products