SELECT
	UnitPrice,
	UnitPrice + 10 AS Plus10,
	UnitPrice * 2  AS Doubled,
	UnitPrice * OrderQty as LineTotalCalc

FROM
	Sales.SalesOrderDetail