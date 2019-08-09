-- you need to change the delimiter to save the
-- stored procedure.
-- convetion is $$
DELIMITER $$
	CREATE PROCEDURE get_clients()
	BEGIN
		SELECT * FROM clients;
	END$$
DELIMITER ;

-- calling the stored procedure
CALL get_clients();

-- Exercise
-- create a stored procedure called
-- 		get_invoices_with_balance
-- 		to return all the invoices with a balance > 0

DELIMITER $$
	CREATE PROCEDURE get_invoices_with_balance()
    BEGIN
		SELECT *
        FROM invoices_with_balance
        WHERE balance > 0;
    END$$
DELIMITER ;