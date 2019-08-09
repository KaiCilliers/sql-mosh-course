-- The effected rows will be removed from the view
UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 4;

-- The check option simply prevents
-- you to update the view in such
-- a way that it removes it from
-- the view.
-- ie. trying to chnage the values of
-- fields included in the view

-- To prevent this make sure to add the WITH CHECK OPTION at
-- the bottom of the created view
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
-- WITH CHECK OPTION