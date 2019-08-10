-- Trigger
-- is a block of SQL code that automatically gets executed
-- before or after an insert, update, or delete statment

-- we use it to enforce data consistency

DELIMITER $$
-- notice naming convention
-- name, when activated, what type of operation will be performed
CREATE TRIGGER payments_after_insert
-- you can edit any table, expect for the table
-- that this trigger is for, because an infinite
-- loop can occur
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    -- NEW returns the new row inserted
    -- OLD references the row before a change was made
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
END$$
DELIMITER ;

-- Test trigger
INSERT INTO payments
VALUES (
	DEFAULT,
    '3',
    '4',
    '2019-01-01',
    10,
    2
);

-- Exercise
-- create a trigger that gets fired when we
-- delete a payment
DELIMITER $$
CREATE TRIGGER payment_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END$$
DELIMITER ;

-- Test
DELETE
FROM payments
WHERE payment_id = 9