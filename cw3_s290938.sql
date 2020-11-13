CREATE PROC procedura

@YearsAgo AS DECIMAL

AS
BEGIN
SELECT * FROM AdventureWorksDW2019.dbo.FactCurrencyRate AS f INNER JOIN AdventureWorksDW2019.dbo.DimCurrency AS d 
ON d.CurrencyKey=f.CurrencyKey WHERE DATEPART(YEAR, f.Date) = DATEPART(YEAR, GETDATE()) - @YearsAgo 
AND DATEPART(MONTH, GETDATE()) = DATEPART(MONTH, f.Date) AND  DATEPART(DAY, GETDATE()) = DATEPART(DAY, f.Date)
AND (d.CurrencyAlternateKey = 'EUR' OR d.CurrencyAlternateKey = 'GBP');
END