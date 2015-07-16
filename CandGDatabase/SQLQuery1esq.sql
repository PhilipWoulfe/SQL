/*
select * from Jobs order by Max_Salary;


select First_Name, Last_Name, Annual_Salary from Employees 
	where Hire_Date > 1999/12/31 AND Annual_Salary >= 7000 order by Last_Name desc;

select * from Jobs;

--insert into Jobs (Job_ID, Job_Title, Min_Salary, Max_Salary) Values ('AC_ASST', 'Accounting Assistant', 7000, 10000);


select First_Name, Last_Name, Employee_No from Employees where Job_ID = 'SA_REP' AND Hire_Date >= 15/12/1997 order by Last_Name;

select Last_Name, First_Name, Job_ID from Employees	where Commission_Percent > 0.25 order by Last_Name;

*/

--insert into Employees (Employee_No, First_Name, Last_Name, Email, Hire_Date) Values (277, 'Frank', 'Bitton', 'FBITTON', 2015/08/14);
--Select Department_No, First_Name, Last_Name, Annual_Salary from Employees where Hire_Date between '1998/08/26' AND '1999/11/16' order by Last_Name, First_Name asc
Select Department_No, First_Name, Last_Name, Annual_Salary from Employees order by  First_Name, Annual_Salary asc;

/*
select MIN(Annual_Salary) as thing from Employees;
select AVG(Annual_Salary) as AnotherThing from Employees;
select Avg(Max_Salary) as YetAnotherThing from Jobs;
select MAX(Max_Salary) as YetAnotherThing from Jobs;
*/