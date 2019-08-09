USE sql_store;
-- simply replace the null value with a value
-- SELECT
-- 	order_id,
--     IFNULL(shipper_id, 'Not assigned') as shipper
-- FROM orders

-- SELECT
-- 	order_id,
--     -- if shipper id is null -> show value in comments -> if comments is null -> 'Not assigned'
--     COALESCE(shipper_id, comments, 'Not assigned') as shipper -- basically returns first non null value in the list of arguments
-- FROM orders

-- Exercise
-- columns: customer (full name), phone (if none, display Unknown)