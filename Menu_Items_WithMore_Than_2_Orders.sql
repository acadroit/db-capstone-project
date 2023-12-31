-- Find menu items with more than 2 orders
SELECT
    Cuisines
FROM
    LittleLemonDB.Menus
WHERE
    MenuID = ANY (
        SELECT
            MenuID
        FROM
            LittleLemonDB.Orders
        WHERE
            quantity > 2
    );
