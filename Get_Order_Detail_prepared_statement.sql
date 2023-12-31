-- Create the GetOrderDetail prepared statement
PREPARE GetOrderDetail FROM
    'SELECT OrderID, quantity, TotalCost
     FROM LittleLemonDB.Orders
     WHERE CustomerID = ?';

-- Set the input variable
SET @customerID = 1;

-- Execute the prepared statement
EXECUTE GetOrderDetail USING @customerID;

-- Deallocate the prepared statement
DEALLOCATE PREPARE GetOrderDetail;
