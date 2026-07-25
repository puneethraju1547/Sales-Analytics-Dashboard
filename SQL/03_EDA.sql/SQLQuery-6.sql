/*=========================================
 Project : Sales Analytics Dashboard
 Phase   : Exploratory Data Analysis (EDA)
 Query 1 : Overall Business KPIs
=========================================*/

USE SalesAnalytics;
GO

SELECT
    COUNT(*) AS TotalOrders,
    COUNT(DISTINCT Customer_ID) AS TotalCustomers,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    AVG(Discount) AS AvgDiscount,
    SUM(Quantity) AS TotalQuantity
FROM Orders;

SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT
    Category,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Category
ORDER BY TotalProfit DESC;

SELECT
    Region,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Region
ORDER BY TotalSales DESC;

SELECT
    Region,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Region
ORDER BY TotalProfit DESC;

SELECT
    YEAR(Order_Date) AS OrderYear,
    MONTH(Order_Date) AS OrderMonth,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    OrderYear,
    OrderMonth;

    SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Customer_Name
ORDER BY TotalSales DESC;

SELECT TOP 10
    Product_Name,
    SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Product_Name
ORDER BY TotalSales DESC;

SELECT TOP 10
    Product_Name,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Product_Name
ORDER BY TotalProfit ASC;

SELECT
    Segment,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM Orders
GROUP BY Segment
ORDER BY TotalSales DESC;