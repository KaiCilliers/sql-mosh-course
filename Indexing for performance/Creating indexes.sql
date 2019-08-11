USE sql_store;

-- NOTE, type and rows
-- type = 'ALL' means the search was conducted via all the records in the table
-- rows = 1010 is all the records scanned (size of table)
-- AFTER creating an index run explain statment again
-- type = ref
-- rows = 39
EXPLAIN SELECT COUNT(customer_id)
FROM customers
WHERE state = 'VA';

SELECT COUNT(*) FROM customers;

CREATE INDEX ix_state ON customers (state);

-- Exercise
-- write a query to find the customers with more than 1000 points
-- use explain statement and create an index to compare