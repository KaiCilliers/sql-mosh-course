-- MySQL has its own tables. Here is accessing the user table
-- % is a wildcard
SELECT * FROM mysql.user;

-- Drop a user
CREATE USER bob@codewithmosh.com IDENTIFIED BY '1234';
DROP USER bob@codewithmosh.com;

-- Changing a password
-- for another user
SET PASSWORD FOR john = '1234';
-- for current user
SET PASSWORD = '1234';