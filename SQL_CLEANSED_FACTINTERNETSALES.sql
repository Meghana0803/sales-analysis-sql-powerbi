--Cleansed FACT_InternetSales Table--
SELECT
[Productkey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
--[Promotipnkey]
--[CurrencyKey]
--, [SalesTerritoryKey]
[SalesOrderNumber],
--[SalesOrderLineNumber],
--[RevisionNumber]
--[Order Quantity],
--[UnitPrice],
--[ExtendedAmount]
--[UnitPriceDiscountPct]
--[DiscountAmount]
--[ProductStandardCost]
--[TotalProductCost]
[SalesAmount]
--,[TaxAmt]
--[Freight]
--[Carrier TrackingNumber]
--[Customer PONumber]
--,[OrderDate]
--[DueDate]
--[ShipDate]
FROM
[dbo].[FactInternetSales]
WHERE
LEFT (OrderDateKey, 4) > YEAR (GETDATE())-2 -- Ensures we always only bring two years of date from extraction.
ORDER BY
OrderDateKey ASC

