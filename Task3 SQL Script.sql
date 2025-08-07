--Qns. Display all records from Employees table ? 
select * from Employees

--Qns. Display employees names,jobs and hiredates ?
select Ename,Job,Hiredate From Employees

--Qns. Display record of Employees who joined after 1981 ?
select * From Employees Where Hiredate>'1981-12-31'

--Qns.  Display Employees working as clerk,manager and earning more than 4000 ?
Select * from Employees Where (Job='Clerk' Or Job='Manager') And Sal>4000
			--OR
Select * from Employees Where Job In('Clerk','Manager') And Sal>4000

--Qns. Display Employees record who joined in 1981 year ?
Select * From Employees Where Hiredate>='1981-01-01'  And Hiredate<='1981-12-31'
			--OR
Select * From Employees Where Hiredate between '1981-01-01' And '1981-12-31'
			--OR
Select * From Employees Where HIREDATE Like '1981%'

--Qns. Display Employee details, where 'a' is the 3rd char in their name ?
Select * from Employees Where Ename Like '__a%'

--Qns. Display Employee details, name starting with consonant  ?
Select * from Employees Where Ename Not Like '[aeiou]%'

--Qns. Display Employees whose id = 100,103,105 ?
Select * from Employees Where Empno=100 OR Empno=103 OR Empno=105
		--OR
Select * From Employees where Empno IN (100,103,105)

--Qns. Display only 5 Employees details who is not earning salary ? 
Select top 5 * From Employees Where Sal IS NOT NULL

/*
Qns. Display  ENAME, SAL,HRA,DA,TAX, and TOTSAL   ? 

        HRA  = 20% on sal
        DA    = 30%  on sal
        TAX  = 10% on sal
        TOTSAL  = SAL  + HRA + DA  - TAX 
*/

Select Ename, SAL, SAL*0.2 as HRA, SAL*0.3 as DA, SAL*0.1 as TAX, SAL+(SAL*0.2)+(SAL*0.3)-(SAL*0.1) as TOTSAL FROM Employees 
Where Sal IS NOT NULL

--Qns. Arrange employee list name wise asc ?
Select * From Employees Order By Ename

--Qns. Arrange Employees list based on Higher Salary.
Select * From Employees Where Sal IS NOT NULL Order By Sal Desc

--Qns. Display different Job roles in Employees Table
Select DISTINCT JOB From Employees