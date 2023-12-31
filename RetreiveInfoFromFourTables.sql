-- Retrieve information from four tables
SELECT
    C.CustomerID,
    C.FullName,
    O.OrderID,
    O.TotalCost AS Cost,
    M.ItemName,
    MI.Cuisines,
    MI.Starters
FROM
    LittleLemonDB.Customer C
JOIN
    LittleLemonDB.Orders O ON C.CustomerID = O.CustomerID
JOIN
    LittleLemonDB.Menus MI ON O.MenuID = MI.MenuID
JOIN
    LittleLemonDB.MenuItems M ON MI.MenuItemsID = M.MenuItemID
WHERE
    O.TotalCost > 150
ORDER BY
    O.TotalCost;
