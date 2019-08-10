USE sql_store;

START TRANSACTION;
UPDATE customers SET state = 'VA' WHERE customer_id = 1;
-- when a deadlock occurs, MySQL treats the 2nd party as a failed transaction
UPDATE orders SET status = 1 WHERE order_id = 1;
COMMIT;

-- minimizing deadlocks
-- write your transactions in the same format
	-- update tbl_x then tbl_y
-- keep transactions small
-- shcedule large transactions (editing large tables) during low peak hours