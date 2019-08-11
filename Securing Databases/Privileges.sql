-- 1: web/desktop application
CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
 -- ON sql_store.customers -- only allowed on this specific table
 ON sql_store.* -- all tables in specified DB
 TO moon_app; -- 
 -- TO bob@domain.com -- if they have a domain, then add it here. Just add the entire name


-- 2: admin
GRANT ALL
ON *.* -- all tables in all dbs
TO john;

-- Viewing privileges
SHOW GRANTS FOR john;
SHOW GRANTS;

-- Revoke privileges
GRANT CREATE VIEW
ON sql_store.*
TO moon_app;
REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;
