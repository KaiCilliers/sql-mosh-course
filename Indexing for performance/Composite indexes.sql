USE sql_store;

SHOW INDEXES IN customers;

-- here you are searching using two existing indexes
SELECT customer_id
FROM customers
WHERE state = 'CA' AND points > 1000;

-- MySQL will only use one index
EXPLAIN SELECT customer_id -- 112 rows scanned
FROM customers
-- index search for state and an entire table scan for points :(
WHERE state = 'CA' AND points > 1000;

-- solution is composite index
-- still uses on index -> composite index :)
-- better to use composite indexes
-- 4 to 6 columns is a good spot for composite indexes
CREATE INDEX ix_state_points ON customers (state, points);
EXPLAIN SELECT customer_id -- 58 rows scanned
FROM customers
WHERE state = 'CA' AND points > 1000;

DROP INDEX ix_state ON customers;
DROP INDEX ix_points ON customers;

SHOW INDEXES IN customers;