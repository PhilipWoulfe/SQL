/*Accounting Department Requirements
Request 1
List the last name, first name and employee number of all programmers who were hired on or before 21 May 1991 sorted in ascending order of last name. 


select Last_Name, First_Name, Employee_No from Employees where Hire_Date <= 1991/05/21 order by Last_Name;


Request 2 
List the department number, last name and salary of all employees who were hired between 16/09/87 and 12/05/96 sorted in ascending order of last name within department number. 


select Employees.Department_No, Employees.Last_Name, Employees.Annual_Salary from Employees where Hire_Date between 1987/09/16 AND 1996/05/12 order by Department_No, Last_Name;

Request 3 
List all the data for all jobs where the maximum salary is greater than 15000 sorted in descending order of the maximum salary. 


Select * from Jobs where Max_Salary > 15000 ORDER BY Max_Salary DESC;


Request 4 
List the last name, first name, job id and commission of employees who earn commission sorted in ascending order of first name within last name. 


SELECT Employees.Last_Name, Employees.First_Name, Employees.Job_ID, (Employees.Annual_Salary * Employees.Commission_Percent) as Commission from Employees where Commission_Percent IS NOT NULL order by Last_Name, First_Name;


Request 5 
Which jobs are found in the IT and Sales departments? 


Select Jobs.Job_Title from Jobs
	Join Employees on Employees.Job_ID = Jobs.Job_ID
	Join Departments on Departments.Department_No = Employees.Department_No
	where Departments.Department_Name = 'IT' OR Departments.Department_Name = 'Sales';


Request 6
List the last name of all employees in departments 50 and 90 together with their monthly salaries (rounded to 2 decimal places), sorted in ascending order of last name. 


Select Employees.Last_Name, cast(round((Employees.Annual_Salary / 12), 2) as decimal(10, 2)) as 'Monthly Salary' from Employees where Employees.Department_No = 50 OR Employees.Department_No = 90 order by Last_Name;


Request 7 
Show the total salaries figure for one month displayed with no decimal places.


 select cast(sum(Employees.Annual_Salary / 12) as int) as 'Total Monthly Salary' from Employees;


Request 8 
Show the total number of employees. 

select count(*) as 'Total Employees' from Employees;

Request 9
 List the department number, department name and the number of employees for each departmentthat has more than 2 employees grouping by department number and department name. 

 SELECT Employees.Department_No, Departments.Department_Name, count(*) as NumberOfEmployees from Employees 
JOIN Departments on Departments.Department_No = Employees.Department_No group by Employees.Department_No, Department_Name having count(*) > 2;

Request 10
List the department number, department name and the number of employees for the departmentthat has the highest number of employees using appropriate grouping.

 
 select top 1 Employees.Department_No, Departments.Department_Name, count(*) as NumberOfEmployees from Employees 
 Join Departments on Departments.Department_No = Employees.Department_No group by Employees.Department_No, Departments.Department_Name order by count(*) desc;


 
Request 11 
List the department number and name for all departments where no programmers work. 
*/

Select  Department_No, Department_Name from Departments 
 Join Employees on Departments.Department_No = Employees.Department_No
 Join Jobs on Jobs.Job_ID = Employees.Job_ID
where Jobs.Job_ID <> 'IT_PROG';


Select distinct Departments.Department_No, Departments.Department_Name from Departments 
inner Join Employees on Departments.Department_No = Employees.Department_No
inner Join Jobs on Jobs.Job_ID = Employees.Job_ID
where  'IT_PROG' not in (Select Jobs.Job_ID from Jobs);

/*
Request 12 
Add the following new job IT_ANAL, System Analyst, 10000, 15000 
*/

--insert into jobs(Job_ID, Job_Title, Min_Salary, Max_Salary) values('IT_ANAL', 'System Analyst', 10000, 15000);

/*
Request 13 Update all the maximum salaries for jobs with an increase of 1000. 
*/
  
--update jobs set  Max_Salary += 1000;

/*
Request 14 List all the data for jobs sorted in ascending order of job id. 
*/

 --select * from jobs order by Job_ID Asc;

/*
Request 15 
a) The job history for employee number 102 is no longer required. Delete this record. 
b) List all the data for job history sorted in ascending order of employee number. 
*/

--delete from Job_History where Employee_No=102;
--Select * from Job_History order by Employee_No;

/*
Request 16 
Produce a list of employees showing percentage raises, employee numbers and old and new salaries. 
Employees in departments 20 and 10 are given a 5% rise, employees in departments 50, 80, 90 and 110 
are given a 10% rise and employees in other departments are not given a rise. 
*/

--select CASE WHEN Employees.Department_No=20 OR Employees.Department_No=10																THEN 5
--            WHEN Employees.Department_No=50 OR Employees.Department_No=80 OR Employees.Department_No=90 OR Employees.Department_No=110  THEN 10
--																																		ELSE 0
--			END as PercentIncrease, Employees.Employee_No, Employees.Annual_Salary, 
--			CAST(((CASE WHEN Employees.Department_No=20 OR Employees.Department_No=10													THEN 5 / 100.0
--            WHEN Employees.Department_No=50 OR Employees.Department_No=80 OR Employees.Department_No=90 OR Employees.Department_No=110  THEN 10 / 100.0
--																																		ELSE 0
--			END) * Annual_Salary) + Annual_Salary as decimal(10, 2)) as NewSalary from Employees;

/*
Request 17 
Create a new view for manager’s details only using all the fields from the employee table. Apply a CHECK constraint. 
*/

--CREATE VIEW Managers 
--	as SELECT * FROM Employees where Employees.Job_ID Like '%MGR%';

/*
Request 18 
Show all the fields and all the managers using the view for managers sorted in ascending order of employee number. 
*/

--SELECT * FROM Managers;

/*
Request 19 
Grant the authority to all other users to access the view for managers for SELECT statements only. 
*/

--GRANT SELECT ON Managers TO PUBLIC;

/*
Request 20 
Create an index named LOC_POSTAL_CODEon the Postal Code in the locations table. Provide a printout showing that the index has been created.
*/