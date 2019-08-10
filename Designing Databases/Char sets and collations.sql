-- default is utf8
SHOW CHARSET;
-- you can set this at db and table level

-- UTF-8 CHAR(10) -> 10 characters x maxlength of 3 = 30 bytes x 1mil records = 30mil bytes
-- latin1 CHAR(10) -> 10 x 1 = 10 x 1mil = 10mil

CREATE DATABASE db_name
	CHARACTER SET latin1;
    
ALTER DATABASE db_name
	CHARACTER SET latin1;
    
CREATE TABLE tbl_one(
	id INT PRIMARY KEY
)
CHARACTER SET latin1;

ALTER TABLE tbl_one
CHARACTER SET latin1;

CREATE TABLE tbl_one(
	email VARCHAR(50) CHARACTER SET latin1 NOT NULL UNIQUE
)
CHARACTER SET latin1;