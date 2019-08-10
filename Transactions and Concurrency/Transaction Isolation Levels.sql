-- read notes first
SHOW VARIABLES LIKE 'transaction_isolation';
-- set isolation level for the next transaction
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- set for all future transactions for the current session or connection
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- set for all future transactions for the all sessions or connections
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;