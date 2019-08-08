-- SELECT
-- 	MAX(invoice_total) as highest,
--     MIN(invoice_total) as lowest,
--     AVG(invoice_total) as average,
--     MAX(payment_date) as latest_date,
--     SUM(invoice_total) as total,
--     COUNT(invoice_total) as number_of_invoices
-- FROM invoices

-- SELECT
-- 	MAX(invoice_total) as highest,
--     MIN(invoice_total) as lowest,
--     AVG(invoice_total) as average,
--     MAX(payment_date) as latest_date,
--     SUM(invoice_total) as total,
--     COUNT(invoice_total) as number_of_invoices,
--     -- This returns the count of non null payment_dates
--     COUNT(payment_date) as count_of_payments,
--     -- solution :)
--     COUNT(*) as total_records
-- FROM invoices

-- SELECT
-- 	MAX(invoice_total) as highest,
--     MIN(invoice_total) as lowest,
--     AVG(invoice_total) as average,
--     MAX(payment_date) as latest_date,
--     -- it will first multiply each value with 1.1 and then apply the sum function
--     SUM(invoice_total * 1.1) as total,
--     COUNT(DISTINCT client_id) as total_records
-- FROM invoices
-- WHERE invoice_date > '2019-07-01'

-- aggregate functions only work on non null (NN) values



-- Exercise
-- columns: date_range ('first half of 2019', 'second half of 2019', 'total'
-- 		total_sales, total_payments, what_we_expect(diff between other 2 columns)

USE sql_invoicing;

SELECT
	'First half of 2019' as data_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
SELECT
	'Second half of 2019' as data_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
SELECT
	'Total' as data_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31'