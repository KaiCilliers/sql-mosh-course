-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'b%' -- lastname start with 'b' or 'B'
-- WHERE last_name LIKE '%b%'
-- WHERE last_name LIKE '%y'
-- WHERE last_name LIKE '_____y' -- 6 characters that ends with a 'y'
-- WHERE last_name LIKE 'b____y' -- 6 characters, start with 'b' and end with 'y'
 -- % any number of characters
 -- _ single character
 -- LIKE operator is very old
 
 -- Exercise
 -- get the customers whose
 -- 	addresses contain TRAIL or AVENUE
 -- 	phone numbers end with 9
 -- 	phone numbers not ending with 9
 
 SELECT *
 FROM customers
--  WHERE address LIKE '%TRAIL%' OR address LIKE '%AVENUE%'
-- WHERE phone LIKE '%9' 
WHERE phone NOT LIKE '%9'
 
 