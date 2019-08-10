-- option 1
UPDATE products
-- this is a good field to make a json object
-- products can have so many different properties
-- it would be silly to make fields for all possible
-- properties a product can have
SET properties = '
	{
		"dimensions": [1,2,3],
        "weight": 10,
        "manufacturer": {
			"name": "Sony"
        }
    }
'
WHERE product_id = 1;

-- option 2
UPDATE products
SET properties = JSON_OBJECT(
	'weight', 10,
    'dimensions', JSON_ARRAY(1,2,3),
    'manufacturer', JSON_OBJECT('name', 'Sony')
)
WHERE product_id = 2;


SELECT * FROM products;

-- get specific values from json object
-- syntax: json object, path
-- '$' - represents the current json document
-- '.' -  access individual properties or keys
SELECT product_id, JSON_EXTRACT(properties, '$.weight') as weight
FROM products
WHERE product_id = 1;

-- better way to extract
-- '->' - column pass operator
SELECT
	product_id,
    properties -> '$.weight' as weight,
    properties -> '$.dimensions[0]' as one_dimension,
    -- properties -> '$.manufacturer.name' as manufacturer_name -- "Sony"
    properties ->> '$.manufacturer.name' as manufacturer_name -- Sony
FROM products
WHERE properties ->> '$.manufacturer.name' = 'Sony';


-- updating json object
UPDATE products
SET properties = JSON_SET(
	properties,
    '$.weight', 20,
    '$.age', 10
)
WHERE product_id = 2;

-- remove json object attributes
UPDATE products
SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id = 2;


