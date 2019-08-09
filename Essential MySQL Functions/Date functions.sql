-- current date and time
SELECT NOW();

-- current date without the time component
SELECT NOW(), CURDATE();

-- current time without date component
SELECT NOW(), CURDATE(), CURTIME();

-- split date returning integers
SELECT
	YEAR(NOW()),
    MONTH(NOW()),
    DAY(NOW()),
    HOUR(NOW()),
    SECOND(NOW());
    
-- split date returning strings
SELECT
	DAYNAME(NOW()),
    MONTHNAME(NOW());
    
-- more universal function EXTRACT
-- syntax: unit, from, date/time value
SELECT EXTRACT(DAY FROM NOW());
SELECT EXTRACT(YEAR FROM NOW());