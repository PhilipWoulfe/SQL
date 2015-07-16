/*Select Jobs.Job_Title, Locations.City, Departments.Department_Name, Employees.First_Name, 
	Countries.Country_Name, Regions.Region_Name, Jobs.Max_Salary
	from Employees
       join Departments on Employees.Department_No = Departments.Department_No 
		join Locations on Departments.Location_ID = Locations.Location_ID
		join Countries on Locations.Country_ID = Countries.Country_ID
		join Regions on Countries.Region_ID = Regions.Region_ID
		join Jobs on Employees.Job_ID = Jobs.Job_ID
		where Employees.First_Name = 'Fiona';

		 joining different tables with employees tables
		  put some come conditions on those two tables*/

		/*  Inner join

	SELECT Employees.First_Name, Departments.Department_No
FROM Employees
INNER JOIN Departments
ON Employees.Department_No=Departments.Department_No
ORDER BY Employees.First_Name;
 here i am joining two tables employees and departments

 select Employees.Employee_No,Employees.First_Name,Employees.Annual_Salary,Jobs.Job_ID,Jobs.Max_Salary,Jobs.Min_Salary
 from Employees
 INNER JOIn Jobs
 ON Employees.Job_ID = Jobs.Job_ID
 order by Employees.First_Name asc; 

		

