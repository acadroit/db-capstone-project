-- Create the OrdersView virtual table
CREATE VIEW OrdersView AS
SELECT OrderID, quantity AS Quantity, TotalCost AS Cost
FROM LittleLemonDB.Orders
WHERE quantity > 2;

