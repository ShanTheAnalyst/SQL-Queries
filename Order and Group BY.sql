/* ----------- GROUP BY and ORDER BY----------- 
	The GROUP BY Statement in SQL is used to arrange identical
	data into groups with the help of some functions. 
	i.e if a particular column has same values in different rows then
	it will arrange these rows in a group.
	The ORDER BY keyword is used to sort the result-set in ascending or descending order.
*/

SELECT Distinct(Gender)
FROM EmployeeDemographics

SELECT Gender, Age, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender, Age
ORDER BY Age 

SELECT FirstName, COUNT(FirstName)
FROM EmployeeDemographics
GROUP BY FirstName 

SELECT * 
FROM EmployeeDemographics
ORDER BY 1 ASC, 4 DESC
