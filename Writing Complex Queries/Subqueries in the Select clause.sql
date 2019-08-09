-- SELECT
-- 	invoice_id,
--     invoice_total
-- FROM invoices

-- SELECT
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) AS invoice_average,
--         -- this is a nono. Cant use an alias in an expression
-- 	-- invoice_total - invoice_average
--     -- option 1
-- --     invoice_total - (SELECT AVG(invoice_total)
-- -- 		FROM invoices)
-- 	-- option 2
--     invoice_total - (SELECT invoice_average) AS difference
-- FROM invoices

-- Neat
-- SELECT
-- 	invoice_id,
--     invoice_total,
--     (SELECT AVG(invoice_total)
-- 		FROM invoices) AS invoice_average,
--     invoice_total - (SELECT invoice_average) AS difference
-- FROM invoices


-- Exercise
-- Columns: client_id, name, total_sales (sum of all invoices for client),
-- average of all invoices, difference
-- Show all clients




