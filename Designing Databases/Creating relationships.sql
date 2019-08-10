USE sql_store2;
CREATE DATABASE IF NOT EXISTS sql_store2;

DROP TABLE IF EXISTS orders;
-- can't drop if orders table exists
-- due to the relationship between
-- customers and orders
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
-- CREATE TABLE IF NOT EXISTS customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    points INT NOT NULL DEFAULT(0),
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE -- NO ACTION, SET NULL, RESTRICT
        ON DELETE NO ACTION
);
    
-- altering primary and foreign key constraints
ALTER TABLE orders
	ADD PRIMARY KEY (order_id, customer_id),
    DROP PRIMARY KEY,
	DROP FOREIGN KEY fk_orders_customers,
	ADD FOREIGN KEY fk_orders_customers (customer_id)
		REFERENCES customers (customer_id)
        ON UPDATE CASCADE -- NO ACTION, SET NULL, RESTRICT
        ON DELETE NO ACTION
		;