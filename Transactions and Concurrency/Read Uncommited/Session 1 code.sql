-- Use ctrl + enter to run one statement at a time
USE sql_store;

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- Note, your code is wrapped in a transction by MySQL
SELECT points
FROM customers
WHERE customer_id = 1;