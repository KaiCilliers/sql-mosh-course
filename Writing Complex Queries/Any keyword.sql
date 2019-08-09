-- ANY and SOME are the same
-- Select clients with at least two invoices

-- SELECT
-- 	client_id,
--     COUNT(*)
-- FROM invoices
-- GROUP BY client_id

-- SELECT
-- 	client_id,
--     COUNT(*) as 'amount of invoices'
-- FROM invoices
-- GROUP BY client_id
-- HAVING COUNT(*) >= 2

-- option 1
-- SELECT *
-- FROM clients
-- WHERE client_id IN (
-- 	SELECT
-- 		client_id
-- 	FROM invoices
-- 	GROUP BY client_id
-- 	HAVING COUNT(*) >= 2
-- )

-- option 2
-- (= Any) is the same as IN
-- Which you choose is up to you
SELECT *
FROM clients
WHERE client_id = ANY (
	SELECT
		client_id
	FROM invoices
	GROUP BY client_id
	HAVING COUNT(*) >= 2
)