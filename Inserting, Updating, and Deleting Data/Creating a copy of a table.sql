-- Note, you wont have a PK field that increments
-- CREATE TABLE orders_archived AS
-- -- This is a sub-query
-- SELECT * FROM orders

-- INSERT INTO orders_archived
-- SELECT *
-- FROM orders
-- WHERE order1_date < '2019-01-01'

-- Exercise
-- display a copy of invoices tbl
-- client Id has to be replaced with client name
-- show only records that have a payment(valid payment_date)

USE sql_invoicing;

CREATE TABLE invoices_archive AS
SELECT
	i.invoice_id,
	i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c USING (client_id)
WHERE i.payment_date IS NOT NULL