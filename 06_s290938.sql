DROP TABLE IF EXISTS AdventureWorksDW2019.dbo.stg_dimemp
DROP TABLE IF EXISTS AdventureWorksDW2019.dbo.scd_dimemp

CREATE TABLE AdventureWorksDW2019.dbo.stg_dimemp(EmployeeKey INT, FirstName NVARCHAR(50),  LastName NVARCHAR(50),  Title NVARCHAR(50))

INSERT INTO AdventureWorksDW2019.dbo.stg_dimemp
SELECT EmployeeKey, FirstName, LastName, Title
FROM DimEmployee
WHERE EmployeeKey BETWEEN 270 AND 275;

CREATE TABLE AdventureWorksDW2019.dbo.scd_dimemp(EmployeeKey INT, FirstName NVARCHAR(50),  LastName NVARCHAR(50),  Title NVARCHAR(50), STARTDATE DATETIME, ENDDATE DATETIME)
