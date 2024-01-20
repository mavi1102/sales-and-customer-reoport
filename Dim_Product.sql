SELECT 
	   p.[ProductKey]
      ,p.[ProductAlternateKey] AS Product_Item_Code
      ,p.[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product_Name]
	  ,ps.EnglishProductSubcategoryName AS [Sub Category], -- Joined in from Sub Category Table
	   pc.EnglishProductCategoryName AS [Product Category], -- Joined in from Category Table

      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
       p.[Color] AS [Prodcut_Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS [Product_Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS [Product_Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS [Product_Model_Name]
      --,[LargePhoto]
      ,p.[EnglishDescription] AS [Product_Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	  ,ISNULL (p.status,'OutDated') AS [Product_Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey =p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
		P.ProductKey ASC
