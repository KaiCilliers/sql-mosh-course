-- Find products that are more
-- expensive than lettuce (id = 3)

-- -- Outer query
-- SELECT *
-- FROM products
-- WHERE unit_price > (
-- -- Inner Query
-- 	SELECT unit_price
--     FROM products
--     WHERE product_id = 3
-- )

-- Exercise
-- in sql_hr database
-- find employees who earn more than average