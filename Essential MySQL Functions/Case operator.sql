SELECT
	order_id,
    order_date,
    CASE
		WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
        WHEN YEAR(order_date) < YEAR(NOW()) -1 THEN 'Archived'
        ELSE 'Future'
	END as category
FROM orders;

SELECT
	CONCAT(first_name, ' ', last_name),
    points,
    CASE
		WHEN points > 3000 THEN 'Gold'
        WHEN points >= 2000 THEN 'Silver'
        ELSE 'Bronze'
	END as type
FROM customers

-- REFRACTORING
-- SELECT
-- 	customer_id,
--     first_name,
--     points,
--     CASE
-- 		WHEN points < 2000 THEN 'BRONZE'
--         WHEN points <= 3000 THEN 'SILVER'
--         WHEN points > 3000 THEN 'GOLD'
-- 	END as type
-- FROM customers
-- ORDER BY first_name

-- old IFstatement replacing the old Union statement
-- SELECT
-- 	customer_id,
--     first_name,
--     points,
--     IF(
-- 		points > 3000,
--         'GOLD',
--         IF(
-- 			points >= 2000,
--             'SILVER',
--             'BRONZE'
--         )
--     ) as type
-- FROM customers
-- ORDER BY first_name

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