--// cleansed dim_datetable//

SELECT 
	   [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Week
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as WeekNum_Yr
      ,[EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName],3) as Month_short
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month_No
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear>=2019
