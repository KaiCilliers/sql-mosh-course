-- IF(expression, if_true, if_false)

-- SELECT
-- 	order_id,
--     order_date,
--     IF(
-- 		YEAR(order_date) = YEAR(NOW()),
--         'Active',
--         'Archived'
-- 	) as category
-- FROM orders

-- IF replacing old Union statement
SELECT
	customer_id,
    first_name,
    points,
    IF(
		points > 3000,
        'GOLD',
        IF(
			points >= 2000,
            'SILVER',
            'BRONZE'
        )
    ) as type
FROM customers
ORDER BY first_name

-- Old union statement
-- SELECT
-- 	customer_id,
--     first_name,
--     points,
--     'BRONZE' AS type
-- FROM customers
-- WHERE points < 2000
-- UNION
-- SELECT
-- 	customer_id,
--     first_name,
--     points,
--     'SILVER' AS type
-- FROM customers
-- WHERE points BETWEEN 2000 AND 3000
-- UNION
-- SELECT
-- 	customer_id,
--     first_name,
--     points,
--     'GOLD' AS type
-- FROM customers
-- WHERE points > 3000
-- ORDER BY first_name