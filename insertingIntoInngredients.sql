cduse sys;
INSERT INTO INGREDIENTS (NAME, LACTOSE_FREE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Eggs', false, true, false, true);

INSERT INTO INGREDIENTS (NAME, LACTOSE_FREE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Bread', false, true, true, false);

INSERT INTO INGREDIENTS (NAME, LACTOSE_FREE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Beef Patty', false, false, false, true);

INSERT INTO INGREDIENTS (NAME, LACTOSE_FREE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Lettuce', false, true, true, true);

INSERT INTO INGREDIENTS (NAME, LACTOSE_FREE, VEGETARIAN, VEGAN, GLUTEN_FREE) 
VALUES ('Yoghurt', true, true, false, true);

SELECT NAME FROM INGREDIENTS;
SELECT NAME, PRICE FROM INGREDIENTS;
SELECT *   FROM INGREDIENTS ORDER BY NAME;
SELECT * FROM INGREDIENTS ORDER BY GLUTEN_FREE DESC;


