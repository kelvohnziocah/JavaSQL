#Retrieve the number of orders for each meal using GROUP BY and COUNT:

SELECT MealName, COUNT(*) AS NumberOfOrders
FROM Orders
GROUP BY MealName;

#Retrieve the total revenue for meals with a price greater than €15 using WHERE and SUM:

SELECT SUM(Price) AS TotalRevenue
FROM Meals
WHERE Price > 15;

#Retrieve the number of meals with more than 500 calories using GROUP BY and COUNT:

SELECT MealName, COUNT(*) AS NumberOfMeals
FROM Meals
WHERE Calories > 500
GROUP BY MealName;

#Retrieve the total price for meals with names containing the letter 'S' using WHERE, SUM, and LIKE:

SELECT SUM(Price) AS TotalPrice
FROM Meals
WHERE LOWER(MealName) LIKE '%s%';

#Retrieve the number of orders for each meal ordered before '202X-XX-XX 18:00:00' using WHERE, GROUP BY, and COUNT:

SELECT meal_id, COUNT(order_id) AS order_count
FROM orders
WHERE order_date < '2023-06-18 18:00:00'
GROUP BY meal_id;