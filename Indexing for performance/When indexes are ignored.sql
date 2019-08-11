-- does a full index scan, which is still faster than a full table scan
EXPLAIN SELECT customer_id -- scans all records (1010)
FROM customers
WHERE state = 'CA' OR points > 1000;

CREATE INDEX ix_points ON customers (points);

-- adjust query to make use of indexes
EXPLAIN -- scans a total of 640 records
	SELECT customer_id FROM customers
	WHERE state = 'CA'
	UNION
	SELECT customer_id FROM customers
	WHERE points > 1000;
    
-- Another example
EXPLAIN SELECT customer_id FROM customers
-- this expression causes the full scan
-- when you use a column in an expression, MySQL is not able to utilize
-- indexes in an optimal way
-- WHERE points + 10 > 2010;
-- solution
WHERE points > 2000; -- scanned 3 records