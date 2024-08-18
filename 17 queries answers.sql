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

Q:select the list of students who belongs to csse
select sname from student where DID = 15
output:
charitha
mamatha
harika
hima
sampurna
babu
arathi
charishma
sravya
neeraja
Q:update the address of a particular student
update student set Address = 'Bangloare' where SID = 505
select * from student 
output:
505	charitha	15	2008-07-11 00:00:00.000	F	Bangloare	9978887765	b+
Q:update the mobile of a particular student
update student set Mobile = '9573464535' where SID = 524
output:
524	varsha	15	2003-03-18 00:00:00.000	F	MDP	9573464535	NULL
Q:Insert a column name called Blood group with datatype 
of varchar(15) constrains as null in student table and employement table.
alter table student add Bloodgroup varchar(15) null
alter table employee add Bloodgroup varchar(15) null
Output:
command completed sucessfully.
Q:Remove records from the student table who belongs to chennai.
delete from student where Address = 'chennai'
output:SID	Sname	DID	DOB	Gender	Address	Mobile	Bloodgroup
       502	pm	15	2003-01-19 00:00:00.000	F	TPT	9998887775	ab+
       503	moni	15	2002-03-17 00:00:00.000	F	HYD	9968887775	ab-
       504	gani	15	2004-04-12 00:00:00.000	M	HYD	9968887765	b+
Q:create a view of from student which include SID,SName and address 
of csse with student_csse
create view student_csse as
   select SID,Sname,Address from student where DID = 15
select * from student_csse 
Output:
SID	Sname	Address
502	pm	TPT
503	moni	HYD
504	phani	HYD
505	charitha	Bangloare
506	chinna	banglore
507	mamatha	TPT
508	harika	HYD
510	sampurna	banglore
Q:update student_csse view as address to hyderabad whose SID is 1505
and belongs to chennai.
update student_csse set Address='HYDERABAD' where SID = 505 and address='chennai'
output:
    SID  SName    Address
	505  charitha hyderabad
Q:Update the dob to date time and the constrain as null.
alter table student alter column DOB datetime null
output:commands completed successfully.
Q:Find out the employee who belongs to TPT or csse.
select Ename from employee where city='TPT' or DID=15
output:Ename
swetha
rani
giri
kumar
siva
prakash
ramu
chandu
Q:Display the total sum of salary of csse employees.
select sum(salary)as totalsalary from employee where DID=15 
output:
totalsalary
351000.00
Q:List the employee whose salary is greater than 50k
select Ename from employee where salary>50000
Output:
Ename
swetha
rani
giri
kumar
siva
chandu
prasanthi
Q: update the salary to 85,000whose Designation is Assistant professor.
update employee set salary = '85000.0' where Designation= 'Assisant professor'
output:
5 rows affected
EID	EName	DID	salary	Gender	City	Designation	Bloodgroup	age
1	swetha	4	85000.00	F	TPT	Assisant professor	NULL	NULL
2	rani	4	85000.00	F	TPT	Assisant professor	NULL	NULL
3	giri	15	85000.00	M	TPT	Assisant professor	NULL	30
4	kumar	15	85000.00	M	CD	Assisant professor	NULL	35
5	siva	15	85000.00	M	TPT	Assisant professor	NULL	40
Q:Delete a mobile column from employee table
alter table employee drop column mobile
Output:
commands completed successfully
Q:create view as any name and update view and drop the view.
create view employee_csse as
  select EID,EName from employee where DID=15
select * from employee_csse 
output:
EID	EName
3	prasad
4	kumar
5	siva
6	prakash
7	ramu
update employee set EName ='giri' where EID=3
Output:
EID	EName
3	giri
4	kumar
5	siva
6	prakash
7	ramu
drop view employee_csse
output:commands completed sucessfully.
Q:Find average salary of csse employees.
select avg(salary) from employee where DID=15
Output:70200.00
Q:update the employee with a column name as age of datatype as integer 
and also provide check constraints from 20 to 100.
alter table employee add age int check(age between 20 and 100)
Output:
EID	EName	DID	salary	Gender	City	Designation	Bloodgroup	age
1	swetha	4	85000.00	F	TPT	Assisant professor	NULL	NULL
2	rani	4	85000.00	F	TPT	Assisant professor	NULL	NULL
3	giri	15	85000.00	M	TPT	Assisant professor	NULL	30
4	kumar	15	85000.00	M	CD	Assisant professor	NULL	35
5	siva	15	85000.00	M	TPT	Assisant professor	NULL	40
Q:Display total no of students who belongs to csse.
select count(SID) from student where DID=15
Output:
28
Q:Find out the employee how belongs to csse and age is in between 30 and 40.
update employee set age ='30' where EID=3
update employee set age ='35' where EID=4
update employee set age ='40' where EID=5
update employee set age ='42' where EID=6
update employee set age ='39' where EID=7
update employee set age ='41' where EID=8
select * from employee
select EName from employee where (age between 30 and  40) and DID=15
output:EName
giri
kumar
siva
ramu
Q:Display EID,EName and Dname whse salary is grearter than 40000 and city as tpt.
select EID,EName,DName from employee as e join Department as d
on e.salary>45000 and e.city='tpt'where e.DID=d.DID
output:
EID	EName	DName
1	swetha	aie
2	rani	aie
3	giri	csse
5	siva	csse
6	prakash	csse
Q:Create a simple relation that contain snumber with identity constrain,bid with
integer and primary key as constrain ,BName with varchar(30) notnull,quantity
with integer and null constarin with relation as BookBank.
create table bookbank
(
   snum      int    identity(1,1),
   bid       int    primary key,
   bname     varchar(30)   not null,
   quantity  int         null
   )
Q:Insert 5 tuples into bookbank.
select * from bookbank
insert into bookbank values (120,'qwe',300)
insert into bookbank values (140,'str',500)
insert into bookbank values (160,'wings',400)
insert into bookbank values (180,'ytr',250)
insert into bookbank values (200,'havills',350)
Output:
snum	bid	bname	quantity
1	120	qwe	300
2	140	str	500
3	160	wings	400
4	180	ytr	250
5	200	havills	350
Q:find the total no-of employee whose age is greater than 35 in csse.
select count(EID) from employee where age>35 and DID=15
Output:3
Q:Display SID,Sname of male students whose bloodgroup is 'ab+ve'.
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
output:
	SID	Sname
1	511	harika
