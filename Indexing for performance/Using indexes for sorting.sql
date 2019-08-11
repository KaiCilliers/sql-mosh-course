-- DROP INDEX ix_state_lastname ON customers;
-- DROP INDEX ix_points ON customers;
SHOW INDEXES IN customers;

-- full index scan to sort
EXPLAIN SELECT customer_id
FROM customers
ORDER BY state;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 102 (lower is better)

-- note, in Extra
-- filesort value is very expensive
EXPLAIN SELECT customer_id
FROM customers
ORDER BY first_name;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 1112

-- MySQL server variables
SHOW STATUS LIKE 'last_query_cost';

-- this will perform an index scan
-- because both columns have been indexed
-- NOTE this is for ordering records!!
EXPLAIN SELECT customer_id
FROM customers
ORDER BY state, points;

-- full table scan because first_name has no index
EXPLAIN SELECT customer_id
FROM customers
ORDER BY state, first_name, points;



-- order of sort matters as well
EXPLAIN SELECT customer_id
FROM customers
ORDER BY state, points;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 102

EXPLAIN SELECT customer_id
FROM customers
-- (Extra column) this query uses index AND filesort now, thus the high cost
ORDER BY state, points DESC;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 1112

EXPLAIN SELECT customer_id
FROM customers
-- (Extra column) this query uses index AND filesort now, thus the high cost
ORDER BY state, points DESC;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 1112

EXPLAIN SELECT customer_id
FROM customers
-- both are indexed and both has to be ordered in descending order
-- instead of filesort or index in the Extra column, you have a Backward index scan
ORDER BY state DESC, points DESC;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 102

-- sort by the 2nd column in a composite index
-- uses filesort
EXPLAIN SELECT customer_id
FROM customers
ORDER BY points;
SHOW STATUS LIKE 'last_query_cost'; -- 1112

-- sort by the 2nd column in a composite index
-- you can, however, do this to prevent using filesort
EXPLAIN SELECT customer_id
FROM customers
WHERE state = 'CA'
ORDER BY points;
SHOW STATUS LIKE 'last_query_cost'; -- cost is 11