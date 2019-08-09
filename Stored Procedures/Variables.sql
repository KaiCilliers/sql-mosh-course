-- user/session variables
-- when user disconnects from MySQL or session
-- the variables are freed up from memory
-- SET @invoices_count = 0;

-- Local variable
-- those you store in procedures and functions
-- these variables are freed up from memory when
-- execution is complete, and not when user
-- completes session

USE `sql_invoicing`;
DROP procedure IF EXISTS `get_risk_factor`;

DELIMITER $$
USE `sql_invoicing`$$
-- risk_factor = invoices_total / invoices_count * 5
CREATE PROCEDURE `get_risk_factor` ()
BEGIN
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0; -- prevent from being null
    DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;
	
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices;
    
    SET risk_factor = invoices_total / invoices_count * 5;
    
    SELECT risk_factor;    
END$$

DELIMITER ;

CALL get_risk_factor();
