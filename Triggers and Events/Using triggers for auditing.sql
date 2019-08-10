-- triggers are great for logging :)
DROP TRIGGER IF EXISTS payments_after_insert;
DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payments_audit
    VALUES (
		NEW.client_id,
        NEW.date,
        NEW.amount,
        'Insert',
        NOW()
    );
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS payments_after_delete;
DELIMITER $$
CREATE TRIGGER payments_after_delete
	AFTER DELETE ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
        INSERT INTO payments_audit
		VALUES (
			OLD.client_id,
			OLD.date,
			OLD.amount,
			'Delete',
			NOW()
		);
END$$
DELIMITER ;

-- Testing
INSERT INTO payments
VALUES (DEFAULT, 3, 4, '2019-01-01', 25, 2);
DELETE
FROM payments
WHERE payment_id = 10;