USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = 9999
WHERE customer_id = 1;
COMMIT;