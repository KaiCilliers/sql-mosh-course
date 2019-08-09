-- You can only make updatable view if you statement includes the following:
-- 	DISTINCT
--     Aggregate Functions (MIN, MAX, SUM)
--     GROUP BY / HAVING
--     UNION

-- CREATE OR REPLACE VIEW invoices_with_balance AS
-- SELECT
-- 	invoice_id,
--     number,
--     client_id,
--     invoice_total,
--     payment_total,
--     invoice_total - payment_total AS balance,
--     invoice_date,
--     due_date,
--     payment_date
-- FROM invoices
-- WHERE (invoice_total - payment_total) > 0

-- You can delete from your table through your view
-- DELETE FROM invoices_with_balance
-- WHERE invoice_id = 1

-- Update your table through the view
UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2