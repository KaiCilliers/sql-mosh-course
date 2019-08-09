DROP PROCEDURE IF EXISTS get_clients_by_state;
DELIMITER $$
	CREATE PROCEDURE get_clients_by_state(
		state CHAR(2)
    )
	BEGIN
		SELECT * FROM clients c
        WHERE c.state = state;
	END$$
DELIMITER ;

-- Call procedure
CALL get_clients_by_state('CA');

-- Exercise
-- write a stored procedure to return invoices for a given client
-- get_invoices_by_client