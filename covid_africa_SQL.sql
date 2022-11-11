
/*Display the entire table*/
SELECT * FROM [dbo].[covid_africa]


/*How many countries are being analyzed in the dataset*/
SELECT COUNT(Country_Other) AS Number_Countries FROM Covid_Africa

/*What 5 countries had the highest recorded cases*/
SELECT Country_Other,Total_Cases FROM Covid_Africa
ORDER BY Total_Cases DESC
OFFSET 0 ROWS
FETCH FIRST 5 ROWS ONLY

/*What 5 countries had the lowest recorded cases*/
SELECT Country_Other,Total_Cases FROM Covid_Africa
ORDER BY Total_Cases ASC
OFFSET 0 ROWS
FETCH FIRST 5 ROWS ONLY

/*What 5 countries had the highest recorded death*/
SELECT Country_Other,Total_Deaths FROM Covid_Africa
ORDER BY Total_Cases DESC
OFFSET 0 ROWS
FETCH FIRST 5 ROWS ONLY

/*What 5 countries had the lowest recorded death*/
SELECT Country_Other,Total_Deaths FROM Covid_Africa
ORDER BY Total_Cases ASC
OFFSET 0 ROWS
FETCH FIRST 5 ROWS ONLY

/*What 10 countries had the highest recorded recoveries with their population*/
SELECT Country_Other,Total_Recovered,Population FROM Covid_Africa
WHERE Total_Recovered IS NOT NULL
ORDER BY Total_Cases DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY

/*What 10 countries had the lowest recorded recoveries with their population */
SELECT Country_Other,Total_Recovered,Population FROM Covid_Africa
WHERE Total_Recovered IS NOT NULL
ORDER BY Total_Cases ASC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY

/*We want to verify the total death per million in the dataset*/
SELECT Country_Other,
cast((cast(Total_Deaths as decimal(10,1))* 1000000/cast(Population as decimal(10,1))) as decimal(6,0)) "Deaths Per Million"
FROM covid_africa
ORDER BY Country_Other ASC

/*We want to verify the total cases per million in the dataset*/
SELECT Country_Other,
cast((cast(Total_Cases as decimal(10,1))* 1000000/cast(Population as decimal(10,1))) as decimal(6,0)) "Total Cases Per Million"
FROM covid_africa
ORDER BY Country_Other ASC


SELECT * FROM [dbo].[covid_africa]



