SELECT *
FROM dbo.customers 

SELECT *
FROM dbo.geography 

SELECT 
	c.CustomerID,
	c.CustomerName,
	c.Gender,
	c.Age,
	g.Country,
	g.City

FROM 
	dbo.customers as c
	FULL OUTER JOIN
	dbo.geography as g 

ON 
c.GeographyID = g.GeographyID; 

 