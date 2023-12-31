-- Create the CancelOrder stored procedure
DELIMITER //

CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
    DECLARE rowCount INT;

    -- Check if the order exists
    SELECT COUNT(*) INTO rowCount
    FROM LittleLemonDB.Orders
    WHERE OrderID = inputOrderID;

    -- If the order exists, delete it
    IF rowCount > 0 THEN
        DELETE FROM LittleLemonDB.Orders
        WHERE OrderID = inputOrderID;
        
        SELECT CONCAT('Order ', inputOrderID, ' has been canceled.') AS Result;
    ELSE
        SELECT CONCAT('Order ', inputOrderID, ' does not exist.') AS Result;
    END IF;
END //

DELIMITER ;

-- Call the CancelOrder procedure with order ID 3
CALL CancelOrder(3);
