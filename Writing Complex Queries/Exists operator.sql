-- Select clients that have an invoice
-- option 1 using join
SELECT *,
	name
FROM clients c
JOIN invoices USING (client_id)
GROUP BY c.client_id;

-- option 2 using subquery
SELECT *
FROM clients
WHERE client_id IN (
	SELECT DISTINCT client_id
    FROM invoices
);

-- option 3 using EXISTS
-- for each record in clients
-- it will execute the subquery to check if that record exists
-- it is also a correlated query
SELECT *
FROM clients c
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = c.client_id
)

-- option 2 visual
-- problem, if there is millions of records,
-- this list will become long -> (1, 2, 3, 5, ...)
-- SELECT *
-- FROM clients
-- WHERE client_id IN (1,2,3,5)

-- option 3 visual
-- if IN produces a large result
-- it is more efficient then to use the exists operator
-- SELECT *
-- FROM clients c
-- WHERE EXISTS (true / false)