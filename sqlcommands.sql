create database Ejet ;
use Ejet;
create table Engineer_detailes(
ID INT,
Name varchar(30),
mobile_number varchar(20),
Qualification varchar(30),
Experiance int,
primary key (ID)
);

drop table Engineer_detailes;

insert into Engineer_detailes values (1,'Manjunath','9900887655','BE',4);
insert into Engineer_detailes values(2,'raghu','8899009988','BCA',2),
(3,'ganga','7788996655','Bcom',3);

select * from Engineer_detailes;

update Engineer_detailes set mobile_number='1122334455' where ID='2';

alter table Engineer_detailes drop column Experiance;

alter table Engineer_detailes add Experiance varchar(30);

TRUNCATE table Engineer_detailes ;

delete from Engineer_detailes where ID='3';


create table Employee_detailes (
Employee_Id int primary key,
ID int,
designation varchar(30),
salary  int,
foreign key(ID) references Engineer_detailes(ID)
);

select * from Employee_detailes;

insert into Employee_detailes values (101,1,'Manager','50000');

insert into Employee_detailes values (102,1,'hr','40000');

delete from Employee_detailes where Employee_Id='102';


select * from Engineer_detailes left join Employee_detailes
on Engineer_detailes.ID=Employee_detailes.ID;

insert into Employee_detailes values (102,2,'hr','40000'),
(103,3,'AE','30000'),
(104,4,'SE','80000');

select * from Engineer_detailes Right join Employee_detailes
on Engineer_detailes.ID=Employee_detailes.ID;

select * from Engineer_detailes inner join Employee_detailes
on Engineer_detailes.ID=Employee_detailes.ID;

SELECT Engineer_detailes.ID,Employee_detailes.Employee_Id,Engineer_detailes.Name,Employee_detailes.designation,Employee_detailes.salary
from ((Engineer_detailes INNER JOIN Employee_detailes
ON Engineer_detailes.ID=Employee_detailes.ID));