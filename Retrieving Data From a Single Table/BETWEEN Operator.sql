SELECT *
FROM customers
-- WHERE points >= 1000 AND points <= 3000
WHERE points BETWEEN 1000 AND 3000 -- ranges are inclusive

-- Exercise
-- Return customers born between 1/1/1990 and 1/1/2000