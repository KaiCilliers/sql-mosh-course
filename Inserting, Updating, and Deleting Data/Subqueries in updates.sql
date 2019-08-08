-- MySQL will execute the parenthases first, thus providing us with an ID
-- UPDATE invoices
-- SET
-- 	payment_total = invoice_total * 0.5,
--     payment_date = due_date
-- WHERE client_id IN
-- WHERE client_id =
-- 			-- (SELECT client_id
-- 			FROM clients
-- 			WHERE name = 'MyWorks')
-- 			(SELECT client_id
-- 			FROM clients
-- 			WHERE state IN ('CA', 'NY'))
--             
-- Above shows where subquery returns one value and multiple values

-- Exercise
-- update comments of orders where customers have more than 3000 points
-- set comment to 'Gold Customer'

UPDATE orders
SET comments = 'Gold Customer'
WHERE customer_id IN
				(SELECT customer_id
				FROM customers
				WHERE points > 3000)