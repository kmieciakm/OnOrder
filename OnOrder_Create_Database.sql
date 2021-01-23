----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
------------------------------------------- DROP ALL -----------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-----------------------------------------------
-- Drop table Dish_Category
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Dish_Category CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Dish_Category table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Dish_Category table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Ingredients
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Ingredients CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Ingredients table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Ingredients table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Dishes
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Dishes CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Dishes table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Dishes table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Ingredients_List
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Ingredients_List CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Ingredients_List table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Ingredients_List table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Delivery_Information
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Delivery_Information CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Delivery_Information table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Delivery_Information table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Orders
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Orders CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Orders table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Orders table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Order_Details
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Order_Details CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Order_Details table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Order_Details table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Orders_History
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Orders_History CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Orders_History table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Orders_History table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Sales_Summary
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Sales_Summary CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Sales_Summary table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Sales_Summary table does not exist.');
END;
/

-----------------------------------------------
-- Drop table Logs
-----------------------------------------------
DECLARE
  table_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(table_does_not_exist, -942);
BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Logs CASCADE CONSTRAINTS';
  DBMS_OUTPUT.PUT_LINE('Logs table dropped.');
  EXCEPTION WHEN table_does_not_exist THEN
        DBMS_OUTPUT.PUT_LINE('Drop ignored - Logs table does not exist.');
END;
/

-----------------------------------------------
-- Drop package place_order_package
-----------------------------------------------
DECLARE
  package_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(package_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP PACKAGE place_order_package';
  DBMS_OUTPUT.PUT_LINE('place_order_package package dropped.');
  EXCEPTION WHEN package_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - place_order_package package does not exist.');
END;
/

-----------------------------------------------
-- Drop procedure prepare_summary
-----------------------------------------------
DECLARE
  procedure_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(procedure_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP PROCEDURE prepare_summary';
  DBMS_OUTPUT.PUT_LINE('prepare_summary procedure dropped.');
  EXCEPTION WHEN procedure_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - prepare_summary procedure does not exist.');
END;
/

-----------------------------------------------
-- Drop procedure modify_order_bill
-----------------------------------------------
DECLARE
  procedure_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(procedure_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP PROCEDURE modify_order_bill';
  DBMS_OUTPUT.PUT_LINE('modify_order_bill procedure dropped.');
  EXCEPTION WHEN procedure_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - modify_order_bill procedure does not exist.');
END;
/

-----------------------------------------------
-- Drop function find_free_id_for_summary
-----------------------------------------------
DECLARE
  function_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(function_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP FUNCTION find_free_id_for_summary';
  DBMS_OUTPUT.PUT_LINE('find_free_id_for_summary function dropped.');
  EXCEPTION WHEN function_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - find_free_id_for_summary function does not exist.');
END;
/

-----------------------------------------------
-- Drop function find_free_id_for_delivery_information
-----------------------------------------------
DECLARE
  function_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(function_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP FUNCTION find_free_id_for_summary';
  DBMS_OUTPUT.PUT_LINE('find_free_id_for_delivery_information function dropped.');
  EXCEPTION WHEN function_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - find_free_id_for_delivery_information function does not exist.');
END;
/

-----------------------------------------------
-- Drop function find_free_id_for_logs
-----------------------------------------------
DECLARE
  function_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(function_does_not_exist, -04043);
BEGIN
  EXECUTE IMMEDIATE 'DROP FUNCTION find_free_id_for_logs';
  DBMS_OUTPUT.PUT_LINE('find_free_id_for_logs function dropped.');
  EXCEPTION WHEN function_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - find_free_id_for_logs function does not exist.');
END;
/

-----------------------------------------------
-- Drop job DAILY_SUMMARY
-----------------------------------------------
DECLARE
  job_does_not_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(job_does_not_exist, -27475);
BEGIN
  dbms_scheduler.drop_job(job_name => 'DAILY_SUMMARY');
  DBMS_OUTPUT.PUT_LINE('DAILY_SUMMARY job dropped.');
  EXCEPTION WHEN job_does_not_exist THEN 
        DBMS_OUTPUT.PUT_LINE('Drop ignored - DAILY_SUMMARY job does not exist.');
END;
/

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------- CREATE TABLE STRUCTURE -----------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-----------------------------------------------
-- Output
-----------------------------------------------
SET SERVEROUTPUT ON;

-----------------------------------------------
-- Create user
-----------------------------------------------
DECLARE
    user_name VARCHAR2(9) := 'OnOrder';
    user_password VARCHAR2(9) := 'OnOrder';
    user_exists EXCEPTION;
    PRAGMA EXCEPTION_INIT(user_exists, -1920);
BEGIN
    EXECUTE IMMEDIATE
        'CREATE USER '|| user_name ||
        ' IDENTIFIED BY ' || user_password ||
        ' ACCOUNT UNLOCK';
    COMMIT;
    EXECUTE IMMEDIATE 'GRANT ALL PRIVILEGES TO ' || user_name;
    dbms_output.put_line('User created.');
EXCEPTION
   WHEN user_exists THEN
     dbms_output.put_line('User already exists.');
   WHEN OTHERS THEN
     dbms_output.put_line('Fail.');
     RAISE;
END;
/

-----------------------------------------------
-- Craete table Dish_Category
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Dish_Category';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( dish_category_id number(16) PRIMARY KEY,
            name nvarchar2(50) NOT NULL,
            description nvarchar2(200)
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Ingredients
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Ingredients';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( ingredient_id number(16) PRIMARY KEY,
            name nvarchar2(50) NOT NULL,
            isAllergen number(1) DEFAULT 0 NOT NULL,
            containGluten number(1) DEFAULT 0 NOT NULL,
            containLactose number(1) DEFAULT 0 NOT NULL,
            amount number(6) DEFAULT 0 NOT NULL,
            CONSTRAINT IsBoolean_isAllergen CHECK (isAllergen IN (1,0)),
            CONSTRAINT IsBoolean_containGluten CHECK (containGluten IN (1,0)),
            CONSTRAINT IsBoolean_containLactose CHECK (containLactose IN (1,0))
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Dishes
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Dishes';
    dish_category_ref VARCHAR(50) := 'Dish_Category(dish_category_id)';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( dish_id number(16) PRIMARY KEY,
            name nvarchar2(50) NOT NULL,
            price number(4,2) NOT NULL,
            dish_category_id number(16) NOT NULL,
            CONSTRAINT fk_dish_dish_category
                FOREIGN KEY (dish_category_id)
                REFERENCES ' || dish_category_ref || '
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Ingredients_List
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Ingredients_List';
    dish_ref VARCHAR(50) := 'Dishes(dish_id)';
    ingredient_ref VARCHAR(50) := 'Ingredients(ingredient_id)';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( ingredients_list_id number(16) PRIMARY KEY,
            dish_id number(16) NOT NULL,
            ingredient_id number(16) NOT NULL,
            CONSTRAINT fk_ingredients_list_dish
                FOREIGN KEY (dish_id)
                REFERENCES ' || dish_ref || ',
            CONSTRAINT fk_ingredients_list_ingredient
                FOREIGN KEY (ingredient_id)
                REFERENCES ' || ingredient_ref || '
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Delivery_Information
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Delivery_Information';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( delivery_info_id number(16) PRIMARY KEY,
            firstname nvarchar2(50) NOT NULL,
            lastname nvarchar2(50) NOT NULL,
            email nvarchar2(50) NOT NULL,
            phone_number number(9,0),
            street nvarchar2(100) NOT NULL,
            home_number nvarchar2(4) NOT NULL,
            city nvarchar2(100) NOT NULL,
            postal_code nvarchar2(10) NOT NULL
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Orders
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Orders';
    delivery_ref VARCHAR(50) := 'Delivery_Information(delivery_info_id)';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( order_id number(16) PRIMARY KEY,
            placed_date date NOT NULL,
            isFulfilled number(1) DEFAULT 0 NOT NULL,
            CONSTRAINT IsBoolean_isFulfilled CHECK (isFulfilled IN (1,0)),
            delivery_id number(16) NOT NULL,
            bill number(6, 2),
            fulfilled_date date,
            CONSTRAINT fk_order_delivery
                FOREIGN KEY (delivery_id)
                REFERENCES ' || delivery_ref ||'
                ON DELETE CASCADE 
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Order_Details
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Order_Details';
    order_ref VARCHAR(50) := 'Orders(order_id)';
    dish_ref VARCHAR(50) := 'Dishes(dish_id)';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( order_detail_id number(16) PRIMARY KEY,
            amount number(4,0) NOT NULL,
            order_id number(16) NOT NULL,
            dish_id number(16) NOT NULL,
            CONSTRAINT fk_order_detail_order
                FOREIGN KEY (order_id)
                REFERENCES ' || order_ref || '
                ON DELETE CASCADE,
            CONSTRAINT fk_order_detail_dish
                FOREIGN KEY (dish_id)
                REFERENCES ' || dish_ref || '
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Orders_History
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Orders_History';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE ' || table_name || ' AS SELECT * FROM ORDERS';
    dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    if(error_code = -955)
    then
        dbms_output.put_line('Table ' || table_name|| ' exists already!'); 
    else
        dbms_output.put_line('Unknown error : '||SQLERRM); 
    end if;
END;
/

-----------------------------------------------
-- Craete table Sales_Summary
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Sales_Summary';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( summary_id number(16) PRIMARY KEY,
            summary_date date NOT NULL,
            orders_realized number(6),
            revenue number(6, 2)
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

-----------------------------------------------
-- Craete table Logs
-----------------------------------------------
DECLARE
    table_name VARCHAR(20) := 'Logs';
    error_code NUMBER;
BEGIN
    EXECUTE IMMEDIATE
        'CREATE TABLE ' || table_name ||
        ' ( log_id number(16) PRIMARY KEY,
            log_date date NOT NULL,
            message nvarchar2(200) NOT NULL
        )';
        dbms_output.put_line('Created ' || table_name || ' table.');
EXCEPTION
WHEN OTHERS THEN
    error_code := SQLCODE;
    IF(error_code = -955)
    THEN
        dbms_output.put_line('Table ' || table_name || ' already exists.');
    ELSE
        dbms_output.put_line('Unknown error : '|| SQLERRM); 
    END IF;
END;
/

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
------------------------------------ INSERT EXAMPLE VALUES -----------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (1, 'Pizza', 'Szeroki wybór pizzy');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (2, 'Sushi', 'Oryginalne sushi robione przez japońskiego mistrza kuchni');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (3, 'Włoskie', 'Makarony');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (4, 'Amerykańskie', 'Burgery i steki');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (5, 'Tureckie', 'Kebaby');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (6, 'Azjatyckie', 'Egzotyczne dania kuchni indyjskiej, wietn amskiej i chińskiej');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (7, 'Zupy', 'Zupy tradycyjne, zupy krem');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (8, 'Owoce morza', 'skorupiaki (homary, langusty, kraby i krewetki) oraz mięczaki (m.in. ostrygi, omułki, przegrzebki, sercówki)');
INSERT INTO Dish_Category (dish_category_id, name, description) VALUES (9, 'Polska kuchnia', 'Tradycyjne dania z polskich domów');

INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (1, 'Mleko', 1, 0, 1, 15);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (2, 'Mąka ryżowa', 0, 0, 0, 8);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (3, 'Mąka pszenna', 1, 1, 0, 52);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (4, 'Śmietana', 1, 0, 1, 28);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (5, 'Ser żółty', 0, 0, 0, 12);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (6, 'Jajka', 0, 0, 0, 60);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (7, 'Pomidory', 0, 0, 0, 7);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (8, 'Ryż', 0, 0, 0, 34);
INSERT INTO Ingredients (ingredient_id, name, isAllergen, containGluten, containLactose, amount) VALUES (9, 'Makaron', 1, 1, 0, 0);

INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (1, 'Pizza Hawajska', 24, 1);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (2, 'Pizza Capricciosa', 24, 1);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (3, 'Pizza Margherita', 16, 1);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (4, 'Futomaki z łososiem i Serkiem Philadelphia', 22, 2);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (5, 'Sashimi z Tuńczyka', 25, 2);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (6, 'California Maki z Pieczonym łososiem', 29, 2);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (7, 'Spaghetti Bolognese', 20.50, 3);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (8, 'Makaron Carbonara', 20.50, 3);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (9, 'Penne z Pesto z Suszonych Pomidorów', 24.90, 3);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (10, 'Burger Chicken', 22, 4);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (11, 'Burger Monster', 31, 4);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (12, 'Burger Step', 24, 4);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (13, 'Talerz Kebab', 20, 5);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (14, 'Rollo Kebab', 17, 5);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (15, 'Talerz Falafel', 17, 5);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (16, 'Pad Thai Kurczak', 33, 6);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (17, 'Ramen Wołowy', 32, 6);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (18, 'Goma wakame', 14, 6);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (19, 'Zupa pomidorowa', 9.90, 7);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (20, 'Zupa grzybowa', 10, 7);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (21, 'Zupa krem dyniowa', 9.90, 7);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (22, 'Schab Panierowany', 17, 9);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (23, 'Gołąbek', 16, 9);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (24, 'Pierogi z Mięsem', 15, 9);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (25, 'Pad Thai Krewetka', 26, 8);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (26, 'Tikka Masala Krewetka', 27, 1);
INSERT INTO Dishes (dish_id, name, price, dish_category_id) VALUES (27, 'Kimchi Bowl Krewetka', 29, 1);

INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (1, 3, 3);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (2, 3, 5);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (3, 3, 7);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (4, 7, 5);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (5, 7, 7);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (6, 7, 9);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (7, 19, 7);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (8, 19, 7);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (9, 1, 1);
INSERT INTO Ingredients_List (ingredients_list_id, dish_id, ingredient_id) VALUES (10, 27, 2);

INSERT INTO Delivery_Information (delivery_info_id, firstname, lastname, email, phone_number, street, home_number, city, postal_code) VALUES (1, 'Jan', 'Kowalski', 'aaa@poczta.pl', 123456572, 'testowa', 1, 'Łódź', '90-201');
INSERT INTO Delivery_Information (delivery_info_id, firstname, lastname, email, phone_number, street, home_number, city, postal_code) VALUES (2, 'Piotr', 'Nowak', 'bbb@poczta.pl', 123456558, 'ulicowa', 13, 'Łódź', '91-041');
INSERT INTO Delivery_Information (delivery_info_id, firstname, lastname, email, phone_number, street, home_number, city, postal_code) VALUES (3, 'Jacek', 'Kowalczul', 'ccc@poczta.pl', 123156578, 'kwiatowa', 51, 'Łódź', '91-061');
INSERT INTO Delivery_Information (delivery_info_id, firstname, lastname, email, phone_number, street, home_number, city, postal_code) VALUES (4, 'Adam', 'Grzędowicz', 'ddd@poczta.pl', 123457578, 'numerowa', 22, 'Łódź', '93-021');

INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill) VALUES (1, (TO_DATE('2021/01/04 21:02:44', 'yyyy/mm/dd hh24:mi:ss')), 0, 1, 53);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill) VALUES (2, (TO_DATE('2021/01/03 18:22:23', 'yyyy/mm/dd hh24:mi:ss')), 0, 4, 15);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill) VALUES (3, (TO_DATE('2021/01/03 20:12:59', 'yyyy/mm/dd hh24:mi:ss')), 0, 3, 41);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (4, (TO_DATE('2021/01/02 13:25:11', 'yyyy/mm/dd hh24:mi:ss')), 1, 1, 24, SYSDATE);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (5, (TO_DATE('2021/01/02 10:10:11', 'yyyy/mm/dd hh24:mi:ss')), 1, 1, 38.9, SYSDATE);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (6, (TO_DATE('2021/01/02 15:47:43', 'yyyy/mm/dd hh24:mi:ss')), 1, 3, 24, SYSDATE);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (7, (TO_DATE('2021/01/02 22:10:09', 'yyyy/mm/dd hh24:mi:ss')), 1, 4, 31, SYSDATE);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (8, (TO_DATE('2021/01/04 09:02:56', 'yyyy/mm/dd hh24:mi:ss')), 1, 2, 24, SYSDATE);
INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill, fulfilled_date) VALUES (9, (TO_DATE('2021/01/03 12:16:32', 'yyyy/mm/dd hh24:mi:ss')), 1, 2, 14, SYSDATE);

INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (1, 1, 1, 1);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (2, 2, 1, 27);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (3, 1, 2, 24);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (4, 1, 3, 14);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (5, 1, 3, 12);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (6, 2, 4, 2);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (7, 1, 5, 6);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (8, 1, 5, 21);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (9, 1, 6, 12);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (10, 3, 7, 11);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (11, 1, 8, 1);
INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id) VALUES (12, 1, 9, 18);

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
---------------------- CREATE PROCEDURES, TRIGGERS, FUNCTIONS, PACKAGE, JOB  -----------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------
-- Name:        find_free_id_for_summary
-- Type:        Function
-- Description: Returns random free value of Sales_Summary.summary_id
-------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION find_free_id_for_summary
RETURN NUMBER IS
    id_amount NUMBER := 1;
    new_id number(16) := 0;
BEGIN
    WHILE (id_amount > 0)  
    LOOP  
        new_id := dbms_random.value(1, 9999999999999999);
        SELECT 
            COUNT(summary_id) INTO id_amount
        FROM Sales_Summary
        WHERE summary_id = new_id;
    END LOOP;
    RETURN new_id;
END;
/

-----------------------------------------------------------------------------------
-- Name:        find_free_id_for_delivery_information
-- Type:        Function
-- Description: Returns random free value of Delivery_information.delivery_info_id
-----------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION find_free_id_for_delivery_information
RETURN NUMBER IS
    id_amount NUMBER := 1;
    new_id number(16) := 0;
BEGIN
    WHILE (id_amount > 0)  
    LOOP  
        new_id := dbms_random.value(1, 9999999999999999);
        SELECT 
            COUNT(delivery_info_id) INTO id_amount
        FROM Delivery_information
        WHERE delivery_info_id = new_id;
    END LOOP;
    RETURN new_id;
END;
/

-------------------------------------------------------------------------
-- Name:        find_free_id_for_logs
-- Type:        Function
-- Description: Returns random free value of Logs.log_id
-------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION find_free_id_for_logs
RETURN NUMBER IS
    id_amount NUMBER := 1;
    new_id number(16) := 0;
BEGIN
    WHILE (id_amount > 0)  
    LOOP  
        new_id := dbms_random.value(1, 9999999999999999);
        SELECT 
            COUNT(log_id) INTO id_amount
        FROM Logs
        WHERE log_id = new_id;
    END LOOP;
    RETURN new_id;
END;
/

-------------------------------------------------------------------------------------
-- Name:        prepare_summary
-- Type:        Procedure
-- Description: Supposed to run once every day, inserts into SALES_SUMMARY table
--              the daily sales report.
-------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE prepare_summary IS
    ordersAmount NUMBER := 0;
    revenue NUMBER := 0;
    new_id NUMBER;
BEGIN
	SELECT
        COUNT(order_id) INTO ordersAmount
    FROM Orders
    WHERE isFulfilled = 1
        AND (EXTRACT(DAY FROM SYSDATE) = EXTRACT(DAY FROM placed_Date))
        AND (EXTRACT(MONTH FROM SYSDATE) = EXTRACT(MONTH FROM placed_Date));
        
    IF(ordersAmount != 0)
    THEN 
        SELECT 
            SUM(bill) INTO revenue
        FROM Orders
        WHERE isFulfilled = 1
            AND (EXTRACT(DAY FROM SYSDATE) = EXTRACT(DAY FROM placed_Date))
            AND (EXTRACT(MONTH FROM SYSDATE) = EXTRACT(MONTH FROM placed_Date));
    END IF;
    
    new_id := find_free_id_for_summary();

    INSERT INTO SALES_SUMMARY (summary_id, summary_date, orders_realized, revenue) VALUES (new_id, SYSDATE, ordersAmount, revenue);
    COMMIT;
END;
/

-------------------------------------------------------------------------------------
-- Name:        DAILY_SUMMARY
-- Type:        Job
-- Description: Schedule to run daily prepare_summary procedure.
-------------------------------------------------------------------------------------
BEGIN
    dbms_scheduler.create_job(job_name        => 'DAILY_SUMMARY',
                              job_type        => 'STORED_PROCEDURE',
                              job_action      => 'prepare_summary',
                              start_date      => systimestamp,
                              end_date        => null,
                              --repeat_interval => 'freq=MINUTELY;',
                              repeat_interval => 'freq=DAILY;',
                              enabled         => true,
                              auto_drop       => false,
                              comments        => 'Prepares sales summary for the day.');
    COMMIT;
    dbms_scheduler.set_attribute(name => 'DAILY_SUMMARY', attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_FULL);
    COMMIT;
END;
/

-------------------------------------------------------------------------------------
-- Name:        modify_order_bill
-- Type:        Procedure
-- Description: Multiply order bill by given factor, used for exmaple for discounts
-------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE modify_order_bill
    (orderId IN Orders.order_id%TYPE, factor IN number) IS
    currentBill Orders.bill%TYPE;
BEGIN
    SELECT bill INTO currentBill FROM Orders WHERE Orders.order_id = orderId;
    IF(currentBill * factor < 0)
    THEN dbms_output.put_line('Cannot modify order bill, result value is lower then 0.');
    ELSE
        UPDATE Orders
        SET bill = bill * factor
        WHERE order_id = orderId;
    END IF;
END;
/

-------------------------------------------------------------------------------------
-- Name:        place_order_package
-- Type:        Package
-- Description: Group objects related to making orders
-------------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE place_order_package
IS
    TYPE order_item IS RECORD
    (
        dish_id NUMBER,
        amount NUMBER
    );
    TYPE order_items IS TABLE OF order_item INDEX BY BINARY_INTEGER;
    PROCEDURE delete_ingredients (order_id_to_delete IN Orders.order_id%TYPE);
    PROCEDURE place_order (orderItems IN place_order_package.order_items,
            firstname IN Delivery_information.firstname%TYPE,
            lastname IN Delivery_information.lastname%TYPE,
            email IN Delivery_information.email%TYPE,
            phone IN Delivery_information.phone_number%TYPE,
            street IN Delivery_information.street%TYPE,
            home IN Delivery_information.home_number%TYPE,
            city IN Delivery_information.city%TYPE,
            postal_code IN Delivery_information.postal_code%TYPE);
    FUNCTION checkIfDishExist (orderItem IN place_order_package.order_item) RETURN BOOLEAN;
    FUNCTION calculatePrice (orderItems IN place_order_package.order_items) RETURN NUMBER;
    FUNCTION findNewIdForOrder RETURN NUMBER;
    FUNCTION findNewIdForOrderDetail RETURN NUMBER;
END;
/
CREATE OR REPLACE PACKAGE BODY place_order_package IS
    -------------------------------------------------------------------------------------
    -- Name:        delete_ingredients
    -- Type:        Procedure
    -- Description: Takes id of new Order and deletes appropriate amount of ingredients.
    -- IMPORTANT:   Deletes the order when ingredients run out.
    -------------------------------------------------------------------------------------
    PROCEDURE delete_ingredients
        (order_id_to_delete IN Orders.order_id%TYPE) IS
        CURSOR c_dishes_to_delete IS
            SELECT dish_id, amount FROM Order_Details
            WHERE order_id = order_id_to_delete;
        CURSOR c_ingredients_to_delete (dishId Dishes.dish_id%TYPE) IS
            SELECT ingredient_id FROM Ingredients_List
            WHERE dish_id = dishId;
        dish_to_delete Order_Details%ROWTYPE;
        ingredient_to_delete Ingredients_List%ROWTYPE;
        ingredients_run_out EXCEPTION;
        PRAGMA EXCEPTION_INIT(ingredients_run_out, -20000);
    BEGIN
        SAVEPOINT original_state;
        FOR dish_to_delete IN c_dishes_to_delete
        LOOP
            FOR ingredient_to_delete IN c_ingredients_to_delete(dish_to_delete.dish_id)
            LOOP
                UPDATE Ingredients SET amount = (amount-dish_to_delete.amount) WHERE ingredient_id = ingredient_to_delete.ingredient_id;
            END LOOP;
        END LOOP;
        COMMIT;
    EXCEPTION
        WHEN ingredients_run_out THEN
            ROLLBACK TO SAVEPOINT original_state;
            DELETE Delivery_information WHERE Delivery_information.delivery_info_id = (
                SELECT delivery_id FROM Orders WHERE order_id = order_id_to_delete
            );
            DELETE Orders WHERE Orders.order_id = order_id_to_delete;
            dbms_output.put_line('Order cannot be placed due to lack of ingredients.');
    END;
    
    -------------------------------------------------------------------------------------
    -- Name:        place_order
    -- Type:        Procedure
    -- Description: Create new Order and relevant entries in Order_Details. Updates
    --              ingredients amount based on ordered dishes with delete_ingredients
    --              procedure
    -------------------------------------------------------------------------------------
    PROCEDURE place_order
            (orderItems IN place_order_package.order_items,
            firstname IN Delivery_information.firstname%TYPE,
            lastname IN Delivery_information.lastname%TYPE,
            email IN Delivery_information.email%TYPE,
            phone IN Delivery_information.phone_number%TYPE,
            street IN Delivery_information.street%TYPE,
            home IN Delivery_information.home_number%TYPE,
            city IN Delivery_information.city%TYPE,
            postal_code IN Delivery_information.postal_code%TYPE) IS
        newOrderId NUMBER;
        deliveryId NUMBER;
        bill NUMBER;
    BEGIN
        -- Check if all dihes can be ordered 
        FOR orderItemIndex IN orderItems.FIRST .. orderItems.LAST
        LOOP
            IF(place_order_package.checkIfDishExist(orderItems(orderItemIndex)) = FALSE)
            THEN DBMS_OUTPUT.PUT_LINE('Cannot create order. Dish unavailable.'); RETURN;
            END IF;
        END LOOP;
        -- Create delivery
        deliveryId := find_free_id_for_delivery_information();
        INSERT INTO Delivery_information (delivery_info_id, firstname, lastname, email, phone_number, street, home_number, city, postal_code)
        VALUES (deliveryId, firstname, lastname, email, phone, street, home, city, postal_code);
        -- Create order
        newOrderId := place_order_package.findNewIdForOrder();
        bill := place_order_package.calculatePrice(orderItems);
        INSERT INTO Orders (order_id, placed_date, isFulfilled, delivery_id, bill)
        VALUES (newOrderId, (TO_DATE(SYSDATE, 'dd/mm/yyyy hh24:mi:ss')), 0, deliveryId, bill);
        COMMIT;
        -- Create all orders_details
        FOR orderItemIndex IN orderItems.FIRST .. orderItems.LAST
        LOOP
            INSERT INTO Order_Details (order_detail_id, amount, order_id, dish_id)
            VALUES (place_order_package.findNewIdForOrderDetail(), orderItems(orderItemIndex).amount, newOrderId, orderItems(orderItemIndex).dish_id);
            COMMIT;
        END LOOP;
        -- Update ingredients amounts
        place_order_package.delete_ingredients(newOrderId);
    END;
    
    -------------------------------------------------------------------------------------
    -- Name:        checkIfDishExist
    -- Type:        Function
    -- Description: Takes order_item type, return TRUE if desired dish_id exists
    --              in the table Dishes, otherwise FALSE.
    -------------------------------------------------------------------------------------
    FUNCTION checkIfDishExist
        (orderItem IN place_order_package.order_item)
    RETURN BOOLEAN IS
        exist BOOLEAN := false;
        foundDish Dishes.dish_id%TYPE;
    BEGIN
        SELECT
            COUNT(Dishes.dish_id) INTO foundDish
        FROM Dishes
        WHERE Dishes.dish_id = orderItem.dish_id;
    
        IF (foundDish = 0)
        THEN
            RETURN FALSE;
        ELSE 
            RETURN TRUE;
        END IF;
    END;
    
    -------------------------------------------------------------------------------------
    -- Name:        findNewIdForOrder
    -- Type:        Function
    -- Description: Returns random free value of Orders.order_id
    -------------------------------------------------------------------------------------
    FUNCTION findNewIdForOrder
    RETURN NUMBER IS
        id_amount NUMBER := 1;
        new_id number(16) := 0;
    BEGIN
        WHILE (id_amount > 0)  
        LOOP
            new_id := dbms_random.value(1, 9999999999999999);
            SELECT 
                COUNT(order_id) INTO id_amount
            FROM Orders
            WHERE order_id = new_id;
        END LOOP;
        RETURN new_id;
    END;
    
    -------------------------------------------------------------------------------------
    -- Name:        findNewIdForOrderDetail
    -- Type:        Function
    -- Description: Returns random free value of Order_Details.order_detail_id
    -------------------------------------------------------------------------------------
    FUNCTION findNewIdForOrderDetail
    RETURN NUMBER IS
        id_amount NUMBER := 1;
        new_id number(16) := 0;
    BEGIN
        WHILE (id_amount > 0)  
        LOOP
            new_id := dbms_random.value(1, 9999999999999999);
            SELECT 
                COUNT(order_detail_id) INTO id_amount
            FROM Order_Details
            WHERE order_detail_id = new_id;
        END LOOP;
        RETURN new_id;
    END;
    
    -------------------------------------------------------------------------------------------
    -- Name:        calculatePrice
    -- Type:        Function
    -- Description: Takes order_items table type, returns a total price of all ordered dishes.
    -------------------------------------------------------------------------------------------
    FUNCTION calculatePrice
        (orderItems IN place_order_package.order_items)
    RETURN NUMBER IS
        sum_of_price number(10,2) := 0;
        partial_price number(10,2) := 0;
    BEGIN
        FOR orderItemIndex IN orderItems.FIRST .. orderItems.LAST
            LOOP
                SELECT
                    SUM(orderItems(orderItemIndex).amount * Dishes.Price) INTO partial_price
                FROM Dishes
                WHERE orderItems(orderItemIndex).dish_id = Dishes.dish_id;
                sum_of_price := sum_of_price + partial_price;
            END LOOP;
        RETURN sum_of_price;
    END;
END;
/

-------------------------------------------------------------------------------------
-- Name:        ARCHIVE_FULFIELLED_ORDERS
-- Type:        Trigger
-- Description: Checks if the order was updated from unfulfilled to fulfilled state,
--              if so inserts order information to Orders History.
-------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER ARCHIVE_FULFIELLED_ORDERS
BEFORE UPDATE ON Orders
FOR EACH ROW
BEGIN
    IF(:NEW.isFulfilled = 1 AND :OLD.isFulfilled = 0)
    THEN
        INSERT INTO Orders_History (order_id, placed_date, isfulfilled, delivery_id, bill, fulfilled_date)
        VALUES (:NEW.order_id, :NEW.placed_date, 1, :NEW.delivery_id, :NEW.bill, SYSDATE);
    END IF;
END;
/

-------------------------------------------------------------------------------------
-- Name:        LOG_SUMMARY
-- Type:        Trigger
-- Description: Log insertes to Sales_Summary
-------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER LOG_SUMMARY
AFTER INSERT ON Sales_Summary
BEGIN
    INSERT INTO Logs (log_id, log_date, message)
    VALUES (find_free_id_for_logs(), SYSDATE, 'Daily summary created');
END;
/

-------------------------------------------------------------------------------------
-- Name:        INGREDIENT_RUN_OUT
-- Type:        Trigger
-- Description: 
-------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER INGREDIENT_RUN_OUT
AFTER UPDATE ON Ingredients
FOR EACH ROW
BEGIN
    IF (:NEW.amount) <= 0
    THEN
        INSERT INTO Logs (log_id, log_date, message)
        VALUES (find_free_id_for_logs(), SYSDATE, 'Ingredient ' || :NEW.name || ' run out.');
        RAISE_APPLICATION_ERROR(-20000, 'Ingredient run out.');
    END IF;
END;
/

-------------------------------------------------------------------------------------
-- Name:        DATABASE_LOGOFF
-- Type:        Trigger
-- Description: Log logoff database event
-------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER DATABASE_LOGOFF
BEFORE LOGOFF ON DATABASE
BEGIN
    INSERT INTO Logs (log_id, log_date, message)
    VALUES (find_free_id_for_logs(), SYSDATE, 'User ' || sys_context('userenv','session_user') || ' logged out');
END;
/

-------------------------------------------------------------------------------------
-- Name:        DATABASE_LOGON
-- Type:        Trigger
-- Description: Log logon database event
-------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER DATABASE_LOGON
AFTER LOGON ON DATABASE
BEGIN
    INSERT INTO Logs (log_id, log_date, message)
    VALUES (find_free_id_for_logs(), SYSDATE, 'User ' || sys_context('userenv','session_user') || ' logged in');
END;
/