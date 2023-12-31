-- Create the GetMaxQuantity procedure
DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    DECLARE max_quantity INT;

    -- Find the maximum ordered quantity
    SELECT MAX(quantity) INTO max_quantity
    FROM LittleLemonDB.Orders;

    -- Display the maximum quantity
    SELECT CONCAT('The maximum ordered quantity is: ', max_quantity) AS Result;
END //

DELIMITER ;

-- Call the GetMaxQuantity procedure
CALL GetMaxQuantity();

