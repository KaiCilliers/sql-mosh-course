USE `sql_invoicing`;
DROP procedure IF EXISTS `get_unpaid_invoices_for_clients`;

DELIMITER $$
USE `sql_invoicing`$$
CREATE PROCEDURE `get_unpaid_invoices_for_clients` (
	client_id INT,
    -- marked as output parameters
    OUT invoices_count INT,
    OUT invoices_total DECIMAL(9,2)
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    -- copy above values into the two varaibles below
    INTO  invoices_count, invoices_total
    FROM invoices i
    WHERE i.client_id = client_id
		AND payment_total = 0;
END$$

DELIMITER ;

-- Use output parameters sparingly
-- user defined variables declared and initialized
set @invoices_count = 0;
set @invoices_total = 0;

-- call procedure using variables
call sql_invoicing.get_unpaid_invoices_for_clients(
	3,
    @invoices_count,
    @invoices_total
);

-- get the values returned
select @invoices_count, @invoices_total;
