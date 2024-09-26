-- cleaning DIM_Customers Table--

SELECT 
c.CustomerKey AS CustomerKey,
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
c.FirstName AS [First Name],
--      ,[MiddleName]
c.LastName AS [Last Name],
--combine first and last name
c.FirstName + ' ' + LastName AS [Full Name],
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
c.DateFirstPurchase AS DateFirstPurchase,
--      ,[CommuteDistance]
g.City AS [Customer City] --joined in customer city from Geography Table
FROM dbo.DimCustomer AS c
LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
CustomerKey ASC;
