create database CQA110 

use CQA110

create table User
(UserId varchar(30),
Username varchar(20),
primary key(UserId));


select * from User;


Insert into User(UserId,Username) values ('1','manju'),
('2','Hruthu'),
('3','shiva'),
('4','rama');


update User set Username='shama' where UserId='4';

Insert into User(UserId,Username) values ('6','manu');

select * from User;

update User set Username='Kumar' where UserId='2';

drop table User ;

delete from User;

TRUNCATE table User;

delete from User where UserId='5';

alter table User add Adress varchar(30) ;
 
create table playlist
(UserId varchar(30),
playlistId varchar(30) primary key,
foreign key (UserId) references User(UserId));

select * from playlist;

drop table playlist;

insert into playlist(UserId,playlistId) values ('1', '101'),
('2','102'),
('3','103'),
('4','104');

insert into playlist values ('5','105');

insert into playlist values ('6','106');

select * from User left join playlist
on User.UserId=playlist.UserId;

select * from User right join playlist
on User.UserId=playlist.UserId;

select * from User inner join playlist
on User.UserId=playlist.UserId;

create table student (
User_Id int primary key,
User_Name varchar(20),
Department varchar(20)
);

insert into student values (1,'Manjunath','Me'),
(2,'manu','cse'),
(3,'akshay','me'),
(4,'chandra','bcom');

select upper(User_Name) mname from student order by User_Name desc;
select upper(User_Name) mname from student order by User_Name asc;

select count(User_Id) from student;

select sum(User_Id) from student;
select sum(User_Id) sum_of from student;

select avg(User_Id) sum_of from student;

select max(User_Id) sum_of from student;

select min(User_Id) sum_of from student;

select Department total from student group by Department;

select count(User_Id),Department total from student group by Department order by User_Id desc;
select count(User_Id),Department total from student group by Department order by User_Id asc;

-- Not null--
create table player(
ID int,
Lastname varchar(35) NOT NULL,
Firstname varchar(35),
city varchar(30)
);

insert into player values(1,'bs','manjunath','sira'),
(2,'kumar','manju','tumkur'),
(3,'kumar','santhosh','benglore'); 

insert into player value (4,'','shiva','lay');
insert into player value (4,'shiva','lay');

 --UNIQUE--
 
create table Animals(
ID int unique,
Petname varchar(35),
Breed varchar(30)
);

drop table Animals;
 
 insert into Animals values (1,'dog','hond'),
 (2,'cat','pussy');
 
 insert into Animals values (2,'deer','non');
 
  -- check --
  create table person(
  Id int,
  Name varchar(30),
  age int check(age>=18)
  );
 drop table person; 
  
  insert into person values (1,'manju',28),
  (2,'Manu',26);
 
 insert into person value (3,'raj',16);
 
 --Default--
 
create table person1(
  Id int,
  Name varchar(30),
  age int ,
  city varchar(30) Default 'benglore'
  );
  
  drop table person1;
  
  insert into person1 values(1,'manju',28,'tumkur'),
  (2,'rama',28,'sira');
  
  select * from person1;
  insert into person1 value (3,'soma',25);
  
  --Auto_Increment constraint--
  
  create table pet(
  id int not null Auto_Increment,
  name char(30),
  primary key(id));
  
  drop table pet;
  insert into pet values ('cat'),('dog'),('cow');
  
  select * from pet;
  
--Enum Constraint---


create table shirts(
id int primary key auto_increment,
name varchar(30),
size enum ('small','medium','large','x-large')
);

insert into shirts values (1,'petereng','small'),
(2,'polo','large');

select * from shirts;
