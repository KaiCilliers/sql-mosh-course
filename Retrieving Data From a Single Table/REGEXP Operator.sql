-- SELECT *
-- FROM customers
-- WHERE last_name REGEXP 'FIELD$' -- lastname must end with 'field'
-- WHERE last_name REGEXP 'FIELD|MAC' -- lastname containing 'field' or mac
-- WHERE last_name REGEXP 'field|mac|rose'
-- WHERE last_name REGEXP '^field|mac|rose'
-- WHERE last_name REGEXP 'field$|mac|rose'
-- WHERE last_name REGEXP '[gim]e' -- lastname containing 'ge' or 'ie' or 'me'
-- WHERE last_name REGEXP '[a-h]e'
-- ^ beginning
-- $ end
-- | logical or
-- [abcd]
-- [a-f]

-- Exercise
-- Get the customers whose
	-- first names are ELKA or AMBUR
    -- last names end with EY or ON
    -- last names start with MY or contains SE
    -- last names contain B followed by R or U

SELECT customer_id, first_name, last_name
FROM customers
-- WHERE first_name REGEXP 'elka|ambur'
-- WHERE last_name REGEXP 'ey$|on$'
-- WHERE last_name REGEXP '^my|se'
-- WHERE last_name REGEXP 'b[ru]'