-- first index you will see is the primary key, called the clustered index
-- note the following columns
-- The other indexes are called secondary indexes
-- 	fun fact, when creating a secondary index, MySQL adds the primary key to the index internally
-- Collation is simply how the records are sorted (ascending or descending)
-- Cardnality estimates the number of unique values in the table
-- 	you can get a more accurate value using the analyze keyword
-- Index_type = 'BTREE' which is binarytree
SHOW INDEXES IN customers;

-- simply run this statement before executing show indexes for a more accurate cardinality
ANALYZE TABLE customers;

-- If you search via PK, then you go directly to the correct record
EXPLAIN SELECT COUNT(customer_id)
FROM customers
WHERE customer_id = 555;

-- foreign keys automatically get indexed
-- this is to allow joining fo tables to be fast
SHOW INDEXES IN orders;