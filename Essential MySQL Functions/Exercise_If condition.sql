-- columns: product id, prod name, amount of orders for item,
-- frequency (orders = 1 then 'Once' else 'Many times')

-- my solution
SELECT
	oi.product_id,
    p.name,
    COUNT(oi.product_id) as orders,
    IF(
		COUNT(oi.product_id) > 1,
        'Many times',
        'Once'
    ) as frequency
FROM order_items oi
JOIN products p USING (product_id)
GROUP BY oi.product_id;

-- different approach (arguably better)
SELECT
	product_id,
    name,
    COUNT(*) as orders,
    IF(
		COUNT(*) > 1,
        'Many times',
        'Once'
    ) as fequency
FROM products
JOIN order_items USING (product_id)
GROUP BY product_id, name