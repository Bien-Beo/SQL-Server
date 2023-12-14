SELECT COUNT(*) AS [NumberOfProducts],
	   SUM([UnitsInStock] - [UnitsOnOrder]) AS [TotalUnitsInStock],
	   AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];