SELECT customer_id, first_name, birth_date, state, points
FROM Customers
-- WHERE birth_date >= '1990-01-01' AND points > 1000
-- WHERE birth_date >= '1990-01-01' OR points > 1000
-- WHERE birth_date >= '1990-01-01'
-- 	OR points > 1000
-- 	AND state = 'va'
-- WHERE birth_date > '1990-01-01' OR
-- 	(points > 1000 AND state = 'va')
-- WHERE NOT (birth_date > '1990-01-01'
-- 	OR points > 1000)
-- WHERE birth_date <= '1990-01-01'
-- 	AND points <= 1000

-- Exercise:
-- From the order_items table, get the items
-- 	for order #6
--     where the total price is greater than 30