/* Sales Analysis Project
Data Cleaning */

USE SalesAnalytics;
GO


SELECT *
FROM Orders
WHERE Profit IS NULL;