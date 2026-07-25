/*=========================================
 Project : Sales Analytics Dashboard
 Phase   : Business Analysis
=========================================*/

USE SalesAnalytics;
GO

SELECT TOP 10
    Customer_Name,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Customer_Name
ORDER BY TotalProfit DESC;

SELECT TOP 10
    Customer_Name,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Customer_Name
ORDER BY TotalProfit ASC;

SELECT TOP 10
    State,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY State
ORDER BY TotalSales DESC;

SELECT TOP 10
    State,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY State
ORDER BY TotalProfit DESC;

SELECT
    Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS ProfitMargin
FROM Orders
GROUP BY Category
ORDER BY ProfitMargin DESC;

 