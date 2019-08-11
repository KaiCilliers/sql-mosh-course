-- user name and then optionally where the user can connect from
-- CREATE USER john@127.0.0.1;
-- CREATE USER john@localhost
-- CREATE USER john@codewithmosh.com -- domain
-- CREATE USER john@'%.codewithmosh.com' -- connected from domaina and any of its sub domains

-- CREATE USER john -- access DB anywhere

-- set the password
CREATE USER john IDENTIFIED BY '1234';