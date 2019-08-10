SHOW ENGINES;
-- noteworthy ones
-- MyISAM(has no foreign keys) and InnoDB(superior)
-- you set storage engine at table level

-- can be an expensive operation,
-- because MySQL has to recreate the table
ALTER TABLE customers
ENGINE = InnoDB;