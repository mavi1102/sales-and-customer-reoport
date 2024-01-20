SELECT  c.CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS First_Name
      --,[MiddleName]
      ,c.LastName AS Last_Name,
	  CONCAT(c.FirstName,' ',c.LastName) AS Full_Name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS [Date_First_Purchase],
      --,[CommuteDistance]
	  g.city AS Customer_City
  FROM  dbo.DimCustomer AS c
  LEFT JOIN  [dbo].[DimGeography] AS g on g.GeographyKey=c.GeographyKey
  ORDER BY c.CustomerKey ASC
