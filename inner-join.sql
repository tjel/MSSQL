```SQL
USE AdventureWorks;
GO
SELECT TOP 5 PPE.BusinessEntityID, PPE.LastName, PPE.FirstName, PEA.EmailAddress
FROM Person.Person PPE
INNER JOIN 
Person.EmailAddress PEA
ON PPE.BusinessEntityID = PEA.BusinessEntityID
ORDER BY PPE.LastName ASC
;
GO
```
