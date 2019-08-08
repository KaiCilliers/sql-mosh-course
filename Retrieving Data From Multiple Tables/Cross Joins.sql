-- Cross join matches all the columns of tbl_1 with all of the columns of tbl_2
-- Below illustrates the matching of every customer with every product
-- SELECT
-- 	c.first_name AS customer,
--     p.name AS product
-- -- Implicit syntax
-- FROM customers c, orders o
-- -- Explicit syntax
-- CROSS JOIN products p
-- ORDER BY customer

-- Exercise
-- Do a cross join between shippers and products
-- using the implicit syntax
-- and then using the explicit syntax
-- SELECT
-- 	sh.name,
--     p.name
-- FROM shippers sh, products p
-- ORDER BY sh.name

SELECT
	sh.name as shipper,
    p.name as product
FROM shippers sh
CROSS JOIN products p
ORDER BY shipper