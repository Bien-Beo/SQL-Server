-- Viết câu lệnh SQL lấy ra tên sản phẩm, giá bán trên mỗi đơn vị, số lượng sản phẩm trên đơn vị
SELECT [ProductName], [UnitPrice], [QuantityPerUnit] --Lấy dữ liệu của cột
FROM [dbo].[Products]; -- Từ bảng nào

SELECT * -- Lấy toàn bộ dữ liệu tất cả các cột trong bảng
FROM dbo.Suppliers;

SELECT DISTINCT Country -- Lấy dữ liệu trong cột không bị trùng lặp
FROM dbo.Employees;

SELECT TOP 5 * --Lấy 5 dòng dữ liệu đầu tiên
FROM dbo.Orders;

SELECT TOP 30 PERCENT  [City] --Lấy 30% trên 100% của cột City trong bảng Employees
FROM dbo.Employees;

SELECT [City]
FROM dbo.Employees;

SELECT DISTINCT TOP 30 PERCENT [CustomerID] --Lấy 30% dữ liệu khác nhau của cột CustomerID
FROM dbo.Orders;

SELECT [CompanyName] AS [Công ty], -- Tên thay thế
	   [PostalCode] AS "Mã bưu điện" 
FROM dbo.Customers;

SELECT TOP 15 [Người sáng lập].CompanyName AS [Công ty]
FROM [dbo].[Customers] AS [Người sáng lập]; --Dùng tên thay thế cho bảng phải có tên thay thế. + tên cột hoặc *

SELECT MIN(UnitPrice) AS [MinPrice] --Lấy giá trị Min
FROM [dbo].[Products];

SELECT MAX([OrderDate]) AS [Ngày mua hàng] --Lấy giá trị Max
FROM [dbo].[Orders];


SELECT COUNT (*) AS "NumberOfCustomers" --Đếm sô lượng
FROM dbo.Customers;

SELECT SUM([Freight]) AS [TatolFreight] --Tính tổng
FROM dbo.Orders;

SELECT AVG([Quantity]) AS [AvgQuantity] --Tính trung bình cộng
FROM [dbo].[Order Details];

SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC; --Sắp xếp tăng dần

SELECT [ContactName]
FROM dbo.Suppliers
ORDER BY [ContactName] DESC; --Sắp xếp giảm dần

SELECT [ProductID],
	   [ProductName],
	   [UnitsInStock],
	   [UnitsOnOrder],
	   ([UnitsInStock] - [UnitsOnOrder]) AS [StockRemaining]
FROM dbo.Products;

SELECT [OrderID],
	   ([Quantity] * [UnitPrice]) AS [OrderDetailsValue]
FROM dbo.[Order Details];

SELECT (AVG([Freight]) / MAX([Freight])) AS [FreightRatio]
FROM dbo.Orders;