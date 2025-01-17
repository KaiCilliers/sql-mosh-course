-- Show events
SHOW EVENTS;
SHOW EVENTS LIKE 'yearly%';
-- DELETE event
DROP EVENT IF EXISTS yearly_delete_stale_audit_rows;

-- Edit event: note alter keyword
DELIMITER $$
ALTER EVENT yearly_delete_stale_audit_rows
ON SCHEDULE
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$
DELIMITER ;

-- alter to temp disable an event
ALTER EVENT yearly_delete_stale_audit_rows DISABLE;
ALTER EVENT yearly_delete_stale_audit_rows ENABLE;