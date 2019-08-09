-- Rewrite using date functions
-- SELECT *
-- FROM orders
-- WHERE order_date >= '2019-01-01';


-- My solution
SELECT *
FROM orders
WHERE EXTRACT(YEAR FROM order_date) = '2019';

-- Current year, above is for 2019 specifically
SELECT *
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())