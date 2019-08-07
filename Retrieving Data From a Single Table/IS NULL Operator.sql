-- SELECT *
-- FROM customers
-- WHERE phone IS NULL
-- WHERE phone IS NOT NULL

-- Exercise
-- Get the orders that are not shipped
SELECT *
FROM orders
WHERE shipped_date IS NULL
	OR shipper_id IS NULL