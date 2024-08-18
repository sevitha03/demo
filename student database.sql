create table Department
    (
         DID    int      primary key,
         DName  varchar(10)  not null
    )
insert into Department values(15,'csse')
insert into Department values(29,'csbs')
insert into Department values(1,'civil')
insert into Department values(2,'ece')
insert into Department values(3,'eee')
insert into Department values(4,'aie')
insert into Department values(5,'cse')
insert into Department values(12,'me')
select * from Department 
alter table Department add Section int null
select * from student
drop table student
drop table Department
create database college
use college
create table student
(
   SID    int           primary key,
   Sname  varchar(30)   not null,
    DID   int           not null   foreign key references Department(DID),
    DOB   date          not null,
   Gender varchar(1)    check (Gender='M'or Gender='F'),
   Address varchar(30)  null,
   Mobile  varchar(10)  null
)
select * from student
insert into student values(501,'pk',1,'19-aug-03','M','TPT','9998887776')
insert into student values(502,'pm',15,'19-jan-03','F','TPT','9998887775')
insert into student values(503,'moni',15,'17-mar-02','F','HYD','9968887775')
insert into student values(504,'phani',15,'12-apr-04','M','HYD','9968887765')
insert into student values(505,'charitha',15,'11-jul-08','F','chennai','9978887765')
insert into student values(506,'chinna',15,'10-may-09','M','banglore','9978884765')
insert into student values(507,'mamatha',15,'14-sep-07','F','TPT','9978384765')
insert into student values(508,'harika',15,'13-oct-02','F','HYD','9278384765')
insert into student values(509,'hima',15,'18-nov-01','F','chennai','9278314765')
insert into student values(510,'sampurna',15,'16-dec-00','F','banglore','9258314765')
insert into student values(511,'babu',15,'14-jan-03','M','TPT','987654321')
insert into student values(512,'arathi',15,'18-mar-03','F','TPT','9876545465')
insert into student values(513,'charishma',15,'17-dec-03','F','kadapa','9876540465')
insert into student values(514,'sravya',15,'05-mar-03','F','vizag','9876545065')
insert into student values(515,'neeraja',15,'28-apr-03','F','MDP','9876577465')
insert into student values(516,'satwika',15,'26-apr-03','F','TPT','9876665465')
insert into student values(517,'anu',15,'22-august-03','F','TPT','987657765')
insert into student values(518,'sai',15,'18-mar-03','F','TPT','9778036577')
insert into student values(519,'yesu',15,'18-mar-03','F','TPT','7778036533')
insert into student values(520,'harshitha',15,'18-mar-03','F','TPT','7780365722')
insert into student values(521,'anitha',15,'18-mar-03','F','TPT','9849763711')
insert into student values(522,'hema',15,'18-mar-03','F','TPT','9849376379')
insert into student values(523,'neha',15,'18-mar-03','F','goa','9849376378')
insert into student values(524,'varsha',15,'18-mar-03','F','MDP','9849376377')
insert into student values(525,'amulya',15,'18-mar-03','F','TPT','9849376375')
insert into student values(526,'pranathi',15,'18-mar-03','F','TPT','9849376374')
insert into student values(527,'gnanu',15,'18-mar-03','F','TPT','9849376373')
insert into student values(528,'jaya',15,'18-mar-03','F','TPT','9849376398')
insert into student values(529,'renu',15,'18-mar-03','F','TPT','9849376372')
insert into student values(530,'suguna',15,'18-mar-03','F','TPT','9849376371')
select sname from student where DID = 15
update student set Address = 'Bangloare' where SID = 505
update student set Mobile = '9573464535' where SID = 524
alter table student add Bloodgroup varchar(15) null
delete from student where Address = 'chennai'
create view student_csse as
   select SID,Sname,Address from student where DID = 15
select * from student_csse 
update student_csse set Address='HYDERABAD' where SID = 505 and address='chennai'
alter table student alter column DOB datetime null
use database college
create table employee
(
   EID      int           primary key,
   EName    varchar(40)   Not Null,
   DID      int           Not Null foreign key references Department(DID),
   salary   money        Not Null,
   Gender   char(1)       Not Null,
   City     varchar(30)   Null,
   mobile   varchar(10)   Null,
   Designation varchar(30) Null
)
select * from employee
insert into employee values(1,'swetha',4,'4000.0','F','TPT','9877898796','Assisant professor')
insert into employee values(2,'rani',4,'40000.0','F','TPT','9877898678','Assisant professor')
insert into employee values(3,'prasda',15,'65000.0','M','TPT','9877898222','Assisant professor')
insert into employee values(4,'kumar',15,'74000.0','M','CD','4577898796','Assisant professor')
insert into employee values(5,'siva',15,'48000.0','M','TPT','8777898796','Assisant professor')
insert into employee values(6,'prakash',15,'46000.0','F','TPT','6077898796','professor')
insert into employee values(7,'ramu',15,'50000.0','M','CD','3377898796','professor')
insert into employee values(8,'chandu',4,'78000.0','F','TPT','9877228796','professor')
insert into employee values(9,'prasanthi',4,'96000.0','F','TPT','9877891196','professor')
insert into employee values(10,'sevitha',4,'87000.0','F','TPT','9877898700','professor')
alter table employee add Bloodgroup varchar(15) null
select Ename from employee where city='TPT' or DID=15
select sum(salary) from employee where DID=15
select Ename from employee where salary>50000
update employee set salary = '85000.0' where Designation= 'Assisant professor'
alter table employee drop column mobile
create view employee_csse as
  select EID,EName from employee where DID=15
select * from employee_csse
update employee set EName ='giri' where EID=3
drop view employee_csse
select avg(salary) from employee where DID=15
alter table employee add age int check(age between 20 and 100)
select count(SID) from student where DID=15
update employee set age ='30' where EID=3
update employee set age ='35' where EID=4
update employee set age ='40' where EID=5
update employee set age ='42' where EID=6
update employee set age ='39' where EID=7
update employee set age ='41' where EID=8
select * from employee
select EName from employee where (age between 30 and  40) and DID=15
select EID,EName,DName from employee as e join Department as d
on e.salary>45000 and e.city='tpt'
where e.DID=d.DID
create table bookbank
(
   snum      int    identity(1,1),
   bid       int    primary key,
   bname     varchar(30)   not null,
   quantity  int         null
   )
select * from bookbank
insert into bookbank values (120,'qwe',300)
insert into bookbank values (140,'str',500)
insert into bookbank values (160,'wings',400)
insert into bookbank values (180,'ytr',250)
insert into bookbank values (200,'havills',350)
select count(EID) from employee where age>35 and DID=15
update student set Bloodgroup='o+' where sid=501
select * from student
update student set Bloodgroup='o-' where sid=510
update student set Bloodgroup='ab+' where sid=502
update student set Bloodgroup='ab-' where sid=503
update student set Bloodgroup='b+' where sid=504
update student set Bloodgroup='b+' where sid=505
update student set Bloodgroup='o+' where sid=506
update student set Bloodgroup='ab+' where sid=507
update student set Bloodgroup='b-' where sid=508
update student set Bloodgroup='ab+' where sid=511

update student set Bloodgroup='ab+' where sid=509

select SID,Sname from student where gender='M' and Bloodgroup='ab+'

