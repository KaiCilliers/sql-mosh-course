-- SELECT *
-- FROM customers
-- WHERE points > 3000 

-- Equality operators
-- >
-- >=
-- <
-- <=
-- =
-- != or <>

-- SELECT *
-- FROM Customers
-- -- WHERE state = 'VA'
-- -- WHERE state <> 'va'
-- WHERE birth_date > '1990-01-01'

-- Get the orders placed this year
SELECT *
FROM orders
WHERE order_date >= '2019-01-01'