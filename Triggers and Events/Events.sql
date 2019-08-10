-- It is a task or block of SQL code that gets
-- executed according to a schedule
-- like a timed event

-- event scheduler needs to be on
-- SHOW VARIABLES LIKE 'event%';
-- SET GLOBAL event_scheduler = ON;

DELIMITER $$
-- syntax
-- frequency, action, name
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
-- Once execution time
-- 	AT '2019-05-01'
-- Repeated
	-- EVERY 1 HOUR
--     EVERY 2 DAYS
	-- STARTS and ENDS are optional
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$
DELIMITER ;