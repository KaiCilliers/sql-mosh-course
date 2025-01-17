-- one way
-- DROP PROCEDURE IF EXISTS get_clients_by_state;
-- DELIMITER $$
-- 	CREATE PROCEDURE get_clients_by_state(
-- 		state CHAR(2)
--     )
--     BEGIN
-- 		IF state IS NULL THEN
--         -- What if you want to return all the records by default
-- 			-- SET state = 'CA';
-- 		-- Return all solution :)
--             SELECT * FROM clients;
-- 		ELSE
-- 			SELECT * FROM clients c
-- 			WHERE c.state = state;
-- 		END IF;		
--     END$$
-- DELIMITER ;
-- CALL get_clients_by_state();

-- second way
-- DROP PROCEDURE IF EXISTS get_clients_by_state;
-- DELIMITER $$
-- 	CREATE PROCEDURE get_clients_by_state(
-- 		state CHAR(2)
--     )
--     BEGIN
-- 		SELECT * FROM clients c
--         -- when passing NULL
--         -- you end up with:
--         -- WHERE 1 = 1 which equals true, and returns all records
-- 		WHERE c.state = IFNULL(state, c.state);
--     END$$
-- DELIMITER ;
-- CALL get_clients_by_state(NULL);

-- Exercise
-- Write a stored procedure called get_payments
-- with two parameters
-- 	client_id +> INT - takes 4 bytes
--     payment_method => TINYINT - takes 1 byte
-- by default, return all payments
-- Return results even if one id is provided
DROP PROCEDURE IF EXISTS get_payments;
DELIMITER $$
CREATE PROCEDURE get_payments(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	SELECT *
	FROM payments p
	WHERE
		p.client_id = IFNULL(client_id, p.client_id) AND
        p.payment_method = IFNULL(payment_method_id, p.payment_method);
END$$
DELIMITER ;
CALL get_payments(NULL,1);