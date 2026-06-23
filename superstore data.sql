CREATE DATABASE sales_analytics;

USE sales_analytics;

-- Sales Analytics Project



-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM superstore_data;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM superstore_data;

-- 3, Totle orders
SELECT COUNT(*) AS Total_Orders
FROM superstore_data; 
   
-- 4, Top 10 Products
SELECT `Product Name`,
SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 5, Top 10 customers
SELECT `Customer Name`,
SUM(Sales) AS Total_Sales
FROM `superstore_data`
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 6, Sales by category
SELECT Category,
SUM(Sales) AS Total_Sales
FROM `superstore_data`
GROUP BY Category;

-- 7,Profit by category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM `superstore_data`
GROUP BY Category;

-- 8, Region Wise Sales
SELECT Region,
SUM(Sales) AS Total_Sales
FROM `superstore_data`
GROUP BY Region;

-- 9, state wise sales
SELECT State,
SUM(Sales) AS Total_Sales
FROM `superstore_data`
GROUP BY State
ORDER BY Total_Sales DESC;

-- 10,most profitable product
SELECT `Product Name`,
SUM(Profit) AS Total_Profit
FROM `superstore_data`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;




























