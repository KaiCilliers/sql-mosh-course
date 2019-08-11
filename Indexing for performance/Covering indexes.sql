-- Extra: Using index
-- type: index
EXPLAIN SELECT customer_id
FROM customers
ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';

-- Extra: Using filesort
-- type: ALL (full table scan)
-- reason is because only ID, state, and points
-- are indexed. (MySQL adds the PK to any index used, hence why ID is included)
EXPLAIN SELECT *
FROM customers
ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';

-- using index (this would qualify an index to be called a covering index)
-- because it has all the fields that you need to return indexed
EXPLAIN SELECT customer_id, state, points
FROM customers
ORDER BY state;
SHOW STATUS LIKE 'last_query_cost';