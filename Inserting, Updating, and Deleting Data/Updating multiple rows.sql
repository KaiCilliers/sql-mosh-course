-- This would be fine, but mySQL workbench runs in safe update mode
-- You wont have this issue anywhere else
-- Solution is to goto Edit -> Preferences -> MySQL Editor -> Untick safe checkbox at the bottom
-- Then restart local DB instance
-- USE sql_invoicing;

-- UPDATE invoices
-- SET payment_total = invoice_total * 0.5,
-- 	payment_date = due_date
-- WHERE client_id = 3

-- UPDATE invoices
-- SET payment_total = invoice_total * 0.5,
-- 	payment_date = due_date
-- WHERE client_id IN (3,4)

-- Exercise
-- Write a SQL statement to
-- 	give any customer born before 1990
--     50 extra points

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01'