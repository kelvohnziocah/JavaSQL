/*Find the maximum price of a meal with more than 500 calories*/
SELECT MAX(price) AS max_price
FROM meals
WHERE calories > 500;

/*Find the average calories of meals that cost more than 15 EUR*/

SELECT AVG(calories) AS avg_calories
FROM meals
WHERE price > 15;

/*Select all meals that have the MAX price, using HAVING and MAX()*/

SELECT meal_id, name, price
FROM meals
HAVING price = (SELECT MAX(price) FROM meals);

/*Select all meals that have a price lower than the average price, using HAVING and AVG*/

SELECT meal_id, name, price
FROM meals
HAVING price < (SELECT AVG(price) FROM meals);

/*Select all meals that have a price lower than the average price and have more than 600 calories*/

SELECT meal_id, name, price, calories
FROM meals
WHERE price < (SELECT AVG(price) FROM meals) AND calories > 600;