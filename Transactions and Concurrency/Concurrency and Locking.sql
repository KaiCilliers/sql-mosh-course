-- Handling multiple users accessing database

-- simulate multiple users = simply open two instances of DB connection

-- have this code in both instances
-- run all code except COMMIT
-- using the CTRL + ENTER combo
-- second call to UPDATE will hang / wait for first
USE sql_store;

START TRANSACTION;
UPDATE customers
SET points = points + 10
WHERE customer_id = 1;
COMMIT;