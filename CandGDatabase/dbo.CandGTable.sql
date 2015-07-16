Create Table Job_History
(
	Employee_No int Not Null Foreign Key  REFERENCES Employees,
	Start_Date datetime Not Null,
	End_Date datetime Not Null,
	Job_ID varchar(10) Not Null,
	Department_No int Not Null,
	Constraint PK_Emp_Start_Date Primary Key(Employee_No, Start_Date)
)
Go

Create Index IX_Job_ID On Job_History(Job_ID)

Go

Create Index IX_Department_No on Job_History(Department_No)