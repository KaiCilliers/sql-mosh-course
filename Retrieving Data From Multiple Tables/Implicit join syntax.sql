-- Explicit join syntax
-- SELECT *
-- FROM orders o
-- JOIN customers c
-- 	ON o.customer_id = c.customer_id

-- Implicit join syntax (not recommended to do)
SELECT *
FROM orders o, customers c
-- if you forget the where clause, you get a cross join which joins
-- every record from tbl_1 with tbl_2
WHERE o.customer_id = c.customer_id