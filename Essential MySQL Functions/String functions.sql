SELECT LENGTH('skype'); -- 5

SELECT UPPER('skype'); -- SKYPE

SELECT LOWER('Skype'); -- skype

-- removing spaces
SELECT LTRIM('     skype'); -- 'skype'
SELECT RTRIM('skype     '); -- 'skype'
SELECT TRIM('  skype     '); -- 'skype'

-- substringing
SELECT LEFT('Kindergarten', 4); -- Kind
SELECT RIGHT('Kindergarten', 6); -- garten
-- goto position 3 (n) and then take 5 characters (inclusive). 5 is optional
SELECT SUBSTRING('Kindergarten', 3, 5); -- nderg

-- returns the position of the first occurence of a character(s)
-- not case sensitive
SELECT LOCATE('n', 'Kindergarten'); -- 3
-- if character does not exist, it returns a zero
SELECT LOCATE('q', 'Kindergarten'); -- 0
SELECT LOCATE('garten', 'Kindergarten'); -- 7

-- base, what you want to replace, what you want to replace it with
SELECT REPLACE('Kindergarten', 'garten', 'garden'); -- Kindergarden

-- concatenates strings
SELECT CONCAT('first', 'last') ; -- firstlast
SELECT CONCAT('first', ' ', 'last') ; -- first last

USE sql_store;

SELECT CONCAT(first_name, ' ', last_name) as full_name
FROM customers