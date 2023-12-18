SELECT COUNT(*) AS [NumberOfProducts],
	   SUM([UnitsInStock] - [UnitsOnOrder]) AS [TotalUnitsInStock],
	   AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];

SELECT TOP 1 [UnitPrice]
FROM [dbo].[Order Details]
ORDER BY [UnitPrice] DESC;