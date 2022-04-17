/*
	Procedures
*/

--DROP PROCEDURE IF EXISTS Test

--CREATE Procedure Test
--AS
--SELECT *
--FROM EmployeeDemographics

--EXEC Test

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee(
	JobTitle varchar(50),
	EmployeePerJob int,
	AvgAge int,
	AvgSal int
)

INSERT INTO #temp_employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM SQLPractice..EmployeeDemographics dem
JOIN SQLPractice..EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_employee

EXEC Temp_Employee @JobTitle = 'salesman'