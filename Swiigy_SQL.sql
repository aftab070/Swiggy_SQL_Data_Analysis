use  amazon;
select * from swiggy;

ALTER TABLE swiggy
CHANGE COLUMN `ID` id INT,
CHANGE COLUMN `Area` area VARCHAR(255),
CHANGE COLUMN `City` city VARCHAR(255),
CHANGE COLUMN `Restaurant` restaurant VARCHAR(255),
CHANGE COLUMN `Price` price DECIMAL(10,2),
CHANGE COLUMN `Avg ratings` avg_ratings DECIMAL(3,2),
CHANGE COLUMN `Total ratings` total_ratings INT,
CHANGE COLUMN `Food type` food_type VARCHAR(255),
CHANGE COLUMN `Address` address VARCHAR(255),
CHANGE COLUMN `Delivery time` delivery_time VARCHAR(255);


-- Q1	Which restaurants have the highest average ratings in Bangalore?

SELECT restaurant, avg_ratings
FROM swiggy
WHERE city = 'Bangalore'
ORDER BY avg_ratings DESC
LIMIT 10;


-- Q2 What is the average price of food items per area in Bangalore?
SELECT area, AVG(price) AS avg_price
FROM swiggy
GROUP BY area
ORDER BY avg_price DESC;

-- Q3 Which restaurant offers the fastest delivery time?

SELECT restaurant, delivery_time
FROM swiggy
ORDER BY CONVERT(delivery_time, UNSIGNED) ASC
LIMIT 5;

-- Q4.	What are the top 10 most expensive restaurants in Bangalore?

SELECT restaurant, price
FROM swiggy
ORDER BY price DESC
LIMIT 10;


-- 5.	Which areas have the highest number of restaurants?

SELECT area, COUNT(*) AS total_restaurants
FROM swiggy
GROUP BY area
ORDER BY total_restaurants DESC;

-- Q6.	What is the correlation between price and average ratings for restaurants?

SELECT restaurant, price, avg_ratings
FROM swiggy
ORDER BY avg_ratings DESC, price DESC
LIMIT 10;

-- Q7.	Which restaurants serve multiple cuisines (diverse food types)?

SELECT restaurant, food_type
FROM swiggy
WHERE LENGTH(food_type) - LENGTH(REPLACE(food_type, ',', '')) >= 1
ORDER BY restaurant;


-- Q8.	What is the average delivery time for each area in Bangalore?

SELECT area, AVG(CAST(delivery_time AS UNSIGNED)) AS avg_delivery_time
FROM swiggy
GROUP BY area
ORDER BY avg_delivery_time ASC;

-- Q9.	Which restaurants have the highest total ratings (most popular)?

SELECT restaurant, total_ratings
FROM swiggy
ORDER BY total_ratings DESC
LIMIT 5;

-- Q10.	What are the top-rated restaurants for specific food types like Mughlai, Chinese, or North Indian?

SELECT restaurant, food_type, avg_ratings
FROM swiggy
WHERE food_type LIKE '%Mughlai%' 
   OR food_type LIKE '%Chinese%' 
   OR food_type LIKE '%North Indian%'
ORDER BY avg_ratings DESC
LIMIT 10;

