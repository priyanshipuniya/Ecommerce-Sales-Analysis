-- Total Revenue
SELECT SUM(Sales) AS Total_Revenue FROM orders;

-- Top 5 Products
SELECT Product_Name, SUM(Sales) AS Revenue
FROM orders
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 5;

-- Sales by Region
SELECT Region, SUM(Sales) AS Revenue
FROM orders
GROUP BY Region;

-- Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month, SUM(Sales) AS Revenue
FROM orders
GROUP BY Month
ORDER BY Month;
