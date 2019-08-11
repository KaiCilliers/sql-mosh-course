-- If you want to create an index on a column with type (string columns)
-- 	char, varchar, text, blob
-- the index might consume a lot of space
-- thus we need to only index the first few characters of a string in the column
-- 	hence prefixing
-- specify the amount of characters as an argument
-- 	you determine the amounf of chars based on the column
-- 	you need to pick enough to be able to uniquely (enough) identify each record
CREATE INDEX ix_lastname ON customers (last_name(20));

-- test amount of characters needed based on statements
SELECT COUNT(*) FROM customers;
-- LEFT(last_name, 1) returns the first character from the left of string
SELECT
	COUNT(DISTINCT LEFT(last_name, 1)), -- 25
    COUNT(DISTINCT LEFT(last_name, 5)), -- 966
    COUNT(DISTINCT LEFT(last_name, 10)) -- 996
FROM customers;
-- thus 5 characters would be good enough