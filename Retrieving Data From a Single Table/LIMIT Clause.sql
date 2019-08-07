-- SELECT *
-- FROM customers
-- LIMIT 3
-- LIMIT 6, 3

-- Exercise
-- Get the top three loyal customers
-- which are the three with the most points

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3 -- always placed at the end of a statement
-- select
-- from
-- where
-- order by
-- limit