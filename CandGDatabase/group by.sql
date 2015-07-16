/*


select Job_ID, First_Name, Last_Name  from Employees group by Employee_No;
*/
--list no of employees per job

--select Department_No, Job_ID, Count(*) as Thingy from Employees group by Department_No, Job_ID;

--break on Department_No skip 
select First_Name, Last_Name, Department_No, Job_ID, (Select count(Distinct Job_ID) From Employees) as Thingy from Employees group by Job_ID, Department_No, First_Name, Last_Name;

/*
SELECT
  t.name,
  t.phone,
  (SELECT COUNT('x') FROM Guys ct 
   WHERE ct.name = t.name) as namecounter
FROM
  Guys t*/