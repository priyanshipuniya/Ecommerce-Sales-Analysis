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
-- Top 5 Customers by Revenue
SELECT Customer_Name, SUM(Sales) AS Revenue
FROM orders
GROUP BY Customer_Name
ORDER BY Revenue DESC
LIMIT 5;

-- Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM orders
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT Product_Name, (Profit/Sales)*100 AS Profit_Margin
FROM orders;
