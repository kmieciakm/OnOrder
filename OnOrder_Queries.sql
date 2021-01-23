----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
------------------------------------ SAMPLE QUERIES ------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-----------------------------------------------
-- 1. List dishes with category and price
-----------------------------------------------
SELECT
    Dishes.name AS "Dish name",
    Dish_category.name AS "Dish category",
    Dishes.Price AS "Price"
FROM Dishes
LEFT JOIN Dish_category
    ON Dishes.dish_category_id = Dish_category.dish_category_id;

-----------------------------------------------
-- 2. Show most expensive dish
-----------------------------------------------
SELECT
    Dishes.name AS "Dish",
    Dishes.price AS "Price"
FROM Dishes
WHERE Dishes.price = (
        SELECT
            MAX(Dishes.price)
        FROM Dishes
    );

---------------------------------------------------------
-- 3. Display ingredients which amount is lower then 10
---------------------------------------------------------
SELECT
    Ingredients.ingredient_id AS "Ingredient id",
    Ingredients.name AS "Ingredient name",
    Ingredients.amount AS "Amount left"
FROM Ingredients
WHERE Ingredients.amount < 10
ORDER BY Ingredients.amount DESC;

------------------------------------------------------------
-- 4. Display average price and count dishes in categories
------------------------------------------------------------
SELECT
    Dish_category.name AS "Dish category",
    COUNT(Dishes.dish_id) AS "Dishes amounts",
    TO_CHAR(AVG(Dishes.price), '00.99') AS "Average price"
FROM Dishes
LEFT JOIN Dish_category
    ON Dishes.dish_category_id = Dish_category.dish_category_id
GROUP BY Dish_category.name
ORDER BY Dish_category.name ASC;

---------------------------------------------------------------------------------------
-- 5. Select dishes of all unfulfilled orders which where placed more then an hour ago
---------------------------------------------------------------------------------------
SELECT
    Orders.order_id "Order Id",
    TO_CHAR(Orders.placed_date, 'YYYY-MM-DD HH24:MI:SS') AS "Order date",
    Dishes.name AS "Dish"
FROM Orders
LEFT JOIN Order_details
    ON Order_details.order_id = Orders.order_id
LEFT JOIN Dishes
    ON Dishes.dish_id = Order_details.dish_id
WHERE FLOOR(SYSDATE - Orders.placed_date) * 24 + ((SYSDATE - Orders.placed_date) - FLOOR(SYSDATE - Orders.placed_date)) * 24 > 1 AND Orders.isfulfilled = 0
ORDER BY Orders.placed_date, Orders.order_id ASC;

-----------------------------------------------
-- 6. List ingredients of given dish
-----------------------------------------------
SELECT
    Ingredients.name AS "Ingredient",
    CASE ingredients.isallergen  
        WHEN 0 THEN 'NO'
        WHEN 1 THEN 'YES'
        ELSE 'UNKNOWN'
    END AS "Allergen"
FROM Ingredients_list
INNER JOIN Ingredients
    ON Ingredients_List.ingredient_id = Ingredients.ingredient_id
WHERE Ingredients_list.dish_id = 3;

------------------------------------------------------------------
-- 7. Select all dishes with no allergens nor gluten and lactose
------------------------------------------------------------------
SELECT
    Dishes.dish_id AS "Dish Id",
    Dishes.name AS "Dish"
FROM Dishes
WHERE Dishes.dish_id NOT IN (
        SELECT DISTINCT
            "Dishes_With_Allergen".dish_id AS "Dish"
        FROM Dishes "Dishes_With_Allergen"
        LEFT JOIN Ingredients_List
            ON Ingredients_List.dish_id = "Dishes_With_Allergen".dish_id
        WHERE Ingredients_list.ingredient_id IN (
                SELECT ingredients.ingredient_id FROM Ingredients
                WHERE Ingredients.isAllergen = 1 OR Ingredients.containGluten = 1 OR Ingredients.containLactose = 1
            )
    ) AND (
        SELECT COUNT(Ingredients_list.ingredient_id)
        FROM Ingredients_List
        WHERE Ingredients_list.dish_id = Dishes.dish_id
    ) > 0
ORDER BY Dishes.dish_id;

-------------------------------------------------------------------------------
-- 8. Select dishes that cannot be ordered because of the lack of ingredients
-------------------------------------------------------------------------------
SELECT
    Dishes.dish_id AS "Dish Id",
    Dishes.name AS "Dish",
    Ingredients.name AS "Lacking product"
FROM Dishes
LEFT JOIN Ingredients_List
    ON Ingredients_List.dish_id = Dishes.dish_id
LEFT JOIN Ingredients
    ON Ingredients_List.ingredient_id = Ingredients.ingredient_id
WHERE Ingredients_list.ingredient_id IN (
        SELECT DISTINCT
            Ingredients.ingredient_id
        FROM Ingredients
        WHERE Ingredients.amount <= 0
    )
ORDER BY Dishes.name;

--------------------------------------------------------
-- 9. Display emails with more than N orders this month
--------------------------------------------------------
SELECT
    Delivery_information.email AS "Email",
    COUNT(Delivery_information.email) AS "Orders in month"
FROM Orders_history
LEFT JOIN Delivery_information
    ON Orders_history.delivery_id = Delivery_information.delivery_info_id
WHERE EXTRACT(MONTH FROM Orders_history.Placed_Date) = EXTRACT(MONTH FROM SYSDATE) AND
      EXTRACT(YEAR FROM Orders_history.Placed_Date) = EXTRACT(YEAR FROM SYSDATE)
GROUP BY Delivery_information.email
HAVING COUNT(Delivery_information.email) >= 2
ORDER BY "Orders in month" DESC;

-----------------------------------------------------------
-- 10. Count in how many dishes each ingredient is present
-----------------------------------------------------------
SELECT
    Ingredients.ingredient_id AS "Ingredient Id",
    Ingredients.name AS "Ingredient",
    (
        SELECT
            COUNT(Ingredients_List.dish_id)
        FROM Ingredients_List
        WHERE Ingredients_List.ingredient_id = Ingredients.ingredient_id
    ) AS "Required in how many dishes"
FROM Ingredients
GROUP BY Ingredients.ingredient_id, Ingredients.name;