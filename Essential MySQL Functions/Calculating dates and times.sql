-- Time travel
SELECT CURDATE() as now,
		DATE_ADD(CURDATE(), INTERVAL 1 DAY) as tomorrow,
		DATE_ADD(CURDATE(), INTERVAL 1 YEAR) as next_year,
        DATE_ADD(CURDATE(), INTERVAL -1 DAY) as yesterday,
        DATE_SUB(CURDATE(), INTERVAL 1 DAY) as yesterday,
		DATE_ADD(CURDATE(), INTERVAL -1 YEAR) as previous_year,
        DATE_SUB(CURDATE(), INTERVAL 1 YEAR) as previous_year;
        
-- Add and subtract dates
-- Result is always in days
SELECT DATEDIFF('2019-01-05', '2019-01-01'); -- 4
SELECT DATEDIFF('2019-01-05 09:00', '2019-01-01 17:00'); -- 4
SELECT DATEDIFF('2019-01-01', '2019-01-05'); -- -4

-- Add and subtract time
-- returns num seconds that elapsed since midnight
SELECT TIME_TO_SEC('09:00'); -- 32400 seconds
SELECT TIME_TO_SEC('09:02') - TIME_TO_SEC('09:00'); -- 120 seconds
SELECT TIME_TO_SEC('09:00') - TIME_TO_SEC('09:02'); -- -120 seconds