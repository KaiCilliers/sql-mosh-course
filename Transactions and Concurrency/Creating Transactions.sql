-- Transaction is a group of SQL statements
-- that represent a single unit of work

-- All statements must complete successfully,
-- otherwise the transaction will fail

-- Transaction ACID properties
-- 	* Atomicity - single unit, no matter how many statements a transaction has
--     Either they all fail or they all succceed
--     * Consistency
--     * Isolation - can not change same rows at the same time, only one transaction can run at once
--     * Durability - Once a transaction is complete, the data is committed

USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-01', 1);

INSERT INTO order_items
-- returns the id of the newly inserted order
VALUES (LAST_INSERT_ID(), 1, 1, 1);

-- COMMIT;
-- Manually handle rollback if statments fail
ROLLBACK;

SHOW VARIABLES LIKE 'autocommit';
