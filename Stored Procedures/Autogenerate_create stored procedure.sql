USE `sql_invoicing`;
DROP procedure IF EXISTS `new_procedure`;

DELIMITER $$
USE `sql_invoicing`$$
CREATE PROCEDURE `new_procedure` ()
BEGIN
	SELECT * FROM payments;
END$$

DELIMITER ;