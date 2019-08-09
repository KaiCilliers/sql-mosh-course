USE `sql_invoicing`;
DROP procedure IF EXISTS `make_payment`;

-- DELIMITER $$
-- USE `sql_invoicing`$$
-- CREATE PROCEDURE `make_payment` (
-- 	invoice_id INT,
--     payment_amount DECIMAL(9,2), -- 9 digits before decimal point and 2 after
-- 	payment_date DATE
-- )
-- BEGIN
-- 	UPDATE invoices i
--     SET
-- 		i.payment_total = payment_amount,
--         i.payment_date = payment_date
-- 	WHERE i.invoice_id = invoice_id;
-- END$$

-- DELIMITER ;

-- What if you pass -100??
-- CALL make_payment(2, 100, '2019-0-01');




DELIMITER $$
USE `sql_invoicing`$$
CREATE PROCEDURE `make_payment` (
	invoice_id INT,
    payment_amount DECIMAL(9,2), -- 9 digits before decimal point and 2 after
	payment_date DATE
)
BEGIN
-- parameter validation should be used sparingly
	IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Invalid payment amount'; -- return an error code. Google sql error codes
        END IF;
	UPDATE invoices i
    SET
		i.payment_total = payment_amount,
        i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
END$$

DELIMITER ;

CALL make_payment(2, -100, '2019-0-01');

