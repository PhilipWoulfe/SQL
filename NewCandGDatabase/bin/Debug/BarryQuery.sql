﻿select First_Name, Last_Name, Job_Title, Annual_Salary from Employees Inner Join Jobs on Employees.Job_ID = Jobs.Job_ID where Hire_Date > '1991/12/31' AND Annual_Salary >= 7000