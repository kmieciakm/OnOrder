-----------------------------------------------
-- Output
-----------------------------------------------
SET SERVEROUTPUT ON;

-----------------------------------------------
-- Place new order
-----------------------------------------------
DECLARE
    dishes_to_order place_order_package.order_items;
BEGIN
    dishes_to_order(1).dish_id := 19;
    dishes_to_order(1).amount := 2;
    dishes_to_order(2).dish_id := 1;
    dishes_to_order(2).amount := 2;
    -- This order should be placed correctly
    place_order_package.place_order(dishes_to_order, 'Mateusz', 'Kmieciak', 'test@email.com', 123456789, 'test street', 23, 'test city', '10-100');
    -- Now, orders should not be made due to lack of ingredients
    place_order_package.place_order(dishes_to_order, 'Mateusz', 'Kmieciak', 'test2@email2.com', 987654321, 'test street', 23, 'test city', '10-100');
END;
/

-----------------------------------------------
-- Manually run DAILY_SUMMARY job
-----------------------------------------------
BEGIN
    dbms_scheduler.run_job('DAILY_SUMMARY');
END;
/