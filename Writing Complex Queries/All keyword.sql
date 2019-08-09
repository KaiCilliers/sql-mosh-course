-- Select invoices larger than all invoices of client 3
USE sql_invoicing;

-- SELECT *
-- FROM invoices
-- WHERE client_id = 3

-- SELECT MAX(invoice_total)
-- FROM invoices
-- WHERE client_id = 3

-- SELECT *
-- FROM invoices
-- WHERE invoice_total > (
-- 	SELECT MAX(invoice_total)
-- 	FROM invoices
-- 	WHERE client_id = 3
-- )

-- another solution with ALL keyword
SELECT *
FROM invoices
-- invoice total has to be larger than any value in the list returned by the subquery
WHERE invoice_total > ALL (
	SELECT invoice_total
    FROM invoices
    WHERE client_id = 3
)

-- Visual
-- SELECT *
-- FROM invoices
-- WHERE invoice_total > ALL (152, 133, 126, 167, 126)








