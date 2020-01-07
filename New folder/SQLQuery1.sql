create database trainer43
use trainer43
--Exercise 1------------------------------------------------------------------------------------------------
create table PMS_Department_details (Department_Id varchar(10) ,Department_Name  varchar(30),
Department_Extension varchar(10) )
select * from PMS_Department_details
---Exercise 2---------------------------------------------------------------------------------------------------------
create table PMS_Employee_details (Employee_Id varchar(10) constraint pk_eid primary key, Employee_Name  varchar(50) constraint ntnu_enm not null ,
Job varchar(30), Manager_code varchar(10), Salary numeric(10,2) constraint ck_sal check (Salary>0) ,Commission  numeric(10,2),Department_ID  varchar(10) )
select * from PMS_Employee_details
---Exercise 3--------------------------------------------------------------------------------------------------