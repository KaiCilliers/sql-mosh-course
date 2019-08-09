-- Functions can only return a single value
USE `sql_invoicing`;
DROP function IF EXISTS `get_risk_factor_for_client`;

DELIMITER $$
USE `sql_invoicing`$$
CREATE FUNCTION `get_risk_factor_for_client` (
	client_id INT
)
RETURNS INTEGER
-- set attributes (you can have both)
-- DETERMINISTIC -- it always returns the same output for the same input
READS SQL DATA -- gona have select statement
-- MODIFIES SQL DATA -- gona have insert, delete, or update statment
BEGIN
	DECLARE risk_factor DECIMAL(9,2) DEFAULT 0; -- prevent from being null
    DECLARE invoices_total DECIMAL(9,2);
    DECLARE invoices_count INT;
	
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id;
    
    SET risk_factor = invoices_total / invoices_count * 5;

	RETURN IFNULL(risk_factor, 0);
END$$

DELIMITER ;

-- Calling the function
-- SELECT
-- 	client_id,
--     name
-- FROM clients

SELECT
	client_id,
    name,
    get_risk_factor_for_client(client_id) as risk_factor
FROM clients