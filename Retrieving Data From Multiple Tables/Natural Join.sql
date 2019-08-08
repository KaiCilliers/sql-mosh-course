-- Not recommended, but nice to know
SELECT
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c -- database engine guesses the join