CREATE VIEW Managers 
	as SELECT * FROM Employees where Employees.Job_ID Like '%MGR%' with check constraint Managers = '%MGR%';