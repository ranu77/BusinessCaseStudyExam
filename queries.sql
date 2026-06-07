SHOW DATABASES;

USE retailexam;

SHOW TABLES;

--1
SELECT Region, SUM(TotalAmount) AS Total_Sales FROM retailtransactions GROUP BY Region;

--2
SELECT ProductName, SUM(TotalAmount) AS Revenue FROM retailtransactions GROUP BY ProductName ORDER BY Revenue DESC LIMIT 5;

--3
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(TotalAmount) AS Monthly_Sales FROM retailtransactions GROUP BY Month ORDER BY Month;

--4
SELECT Region, (SUM(TotalAmount) / (SELECT SUM(TotalAmount) FROM retailtransactions)) * 100 AS Percentage FROM retailtransactions GROUP BY Region;

--5
SELECT SalesChannel, SUM(TotalAmount) AS Total_Sales FROM retailtransactions GROUP BY SalesChannel;

--6
SELECT Category, DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(TotalAmount) AS Sales FROM retailtransactions GROUP BY Category, Month ORDER BY Month;

--7
SELECT CustomerID, COUNT(TransactionID) AS Purchase_Count FROM retailtransactions GROUP BY CustomerID HAVING Purchase_Count > 10;