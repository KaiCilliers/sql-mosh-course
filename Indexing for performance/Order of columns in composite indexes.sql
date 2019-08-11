-- Order of columns rules
-- 	put the most frequently used columns first
--     -- the number of unique records (PK will always have highest cardinality)
--     put the columns with a higher cardinality first
-- below is an example where placing the lower cardinality can be better
-- like all rules, these are just a guideline

-- note
-- the equals sign is more restrictive than
-- last_name's like range
-- this can also determine how you form your
-- composite indexes
-- see more at the bottom of script
SELECT customer_id
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

-- another way to view cardinality
SELECT
	COUNT(DISTINCT state),
    COUNT(DISTINCT last_name)
FROM customers;

CREATE INDEX ix_lastname_state ON customers (last_name, state);

EXPLAIN SELECT customer_id -- scanned 40 records
FROM customers
WHERE state = 'CA' AND last_name LIKE 'A%';

CREATE INDEX ix_state_lastname ON customers (state, last_name);

EXPLAIN SELECT customer_id -- scanned 40 records
FROM customers
WHERE state = 'NY' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id -- scanned 7 records
FROM customers
USE INDEX(ix_lastname_state)
WHERE state = 'CA' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id -- scanned 2 records
FROM customers
WHERE state = 'NY' AND last_name LIKE 'A%';


-- Changing where clause
-- the example is not realistic
EXPLAIN SELECT customer_id -- scanned 40 records
FROM customers
USE INDEX(ix_lastname_state)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

EXPLAIN SELECT customer_id -- scanned 51 records
FROM customers
USE INDEX(ix_state_lastname)
WHERE state LIKE 'A%' AND last_name LIKE 'A%';

DROP INDEX ix_lastname_state ON customers;

-- Section break

-- this warrants an index on the last_name
EXPLAIN SELECT customer_id
FROM customers
USE INDEX(ix_state_lastname)
WHERE state LIKE 'A%';


-- Rules updated
-- 	Frequently used columns
-- 	High cardinality columns
-- 	Take your queries into account