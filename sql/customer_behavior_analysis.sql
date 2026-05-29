CREATE DATABASE customer_analytics;
USE customer_analytics;

SHOW TABLES;
SELECT COUNT(*)
FROM customer_data;

SELECT *
FROM customer_data
LIMIT 5;
#Total Sales
SELECT
SUM(`Purchase Amount`) AS total_sales
FROM customer_data;

#Total Customers
SELECT
COUNT(`Customer ID`) AS total_customers
FROM customer_data;

#Average Customer Spending 
SELECT
AVG(`Purchase Amount`) AS average_spending
FROM customer_data;

#Best Product Categories
SELECT
Category,
SUM(`Purchase Amount`) AS revenue
FROM customer_data
GROUP BY Category
ORDER BY revenue DESC;

#Gender Spending Analysis
SELECT
Gender,
AVG(`Purchase Amount`) AS avg_spending
FROM customer_data
GROUP BY Gender;

#Subscription Analysis
SELECT
`Subscription Status`,
AVG(`Purchase Amount`) AS avg_spending
FROM customer_data
GROUP BY `Subscription Status`;

#seasonal Revenuel 
SELECT
Season,
SUM(`Purchase Amount`) AS total_sales
FROM customer_data
GROUP BY Season
ORDER BY total_sales DESC;

#Preferred Payment Method
SELECT
`Payment Method`,
COUNT(*) AS total_users
FROM customer_data
GROUP BY `Payment Method`
ORDER BY total_users DESC;

#Age Grouping Spendig 
SELECT
`Age Group`,
AVG(`Purchase Amount`) AS avg_spending
FROM customer_data
GROUP BY `Age Group`
ORDER BY avg_spending DESC;

#Most Loyal Customers
SELECT
`Customer ID`,
`Previous Purchases`
FROM customer_data
ORDER BY `Previous Purchases` DESC
LIMIT 10;

#Observation:
#Subscribers spend more than non-subscribers.

#Business Recommendation:
#Provide exclusive offers and loyalty rewards to subscribers to improve revenue retention.

#Observation:
#Winter season generated the highest sales.

#Business Recommendation:
#Increase inventory and launch targeted campaigns during winter seasons.

