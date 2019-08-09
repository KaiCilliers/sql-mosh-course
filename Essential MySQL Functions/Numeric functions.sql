SELECT ROUND(5.73); -- 6
SELECT ROUND(5.73, 1); -- 5.7
SELECT ROUND(5.7355, 2); -- 5.74

-- Get first x numbers after decimal, and toss the rest
SELECT TRUNCATE(5.7345, 2); -- 5.73

-- return smallest INT greater than or equal to argument
-- basically rounds up
SELECT CEILING(5.7); -- 6
SELECT CEILING(5.2); -- 6

-- opposite of ceiling
SELECT FLOOR(5.7); -- 5
SELECT FLOOR(5.2); -- 5

-- absolute value of argument
-- always positive
SELECT ABS(5.2); -- 5.2
SELECT ABS(-5.2); -- 5.2

-- generate a random floating point number between 0 and 1
SELECT RAND();