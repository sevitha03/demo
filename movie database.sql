create table custome 
(
cid integer primary key, 
cname varchar(30) not null,
cmobile integer not null, 
age integer null, 
crating integer not null)
create table Movies 
(
mid integer primary key, 
mname varchar(20) not null,
mlanguage varchar(15) not null, 
mrating integer not null)

create table Reserve
(
cid integer foreign key references Custome(cid) ,
mid integer foreign key  references movies(mid),
rdate  date not  null)
select * from custome
insert into Custome values(1,'amulya','1111111111',20,9)
insert into Custome values(2,'sravya','1111331111',21,4)
insert into Custome values(3,'neeraja','1116611111',19,8)
insert into Custome values(4,'rohit','1111771111',25,7)
insert into custome values(5,'deepak','1111441111',35,10)
insert into custome values(6,'sai','411441111',36,10)
insert into custome values(7,'gopi','411441111',36,8)
insert into custome values(8,'rakesh','777666111',37,9)
insert into movies  values(12,'BheemlaNayak','Telugu',9) 
insert into movies  values(13,'Jalsa','Telugu',10)
insert into movies  values(14,'RRR','Hindi',11)
insert into movies  values(15,'Captain','Tamil',5) 
insert into movies  values(16,'Captain','urdu',5) 
insert into movies  values(17,'Captain America','English',8) 
select * from Movies
insert into reserve values(1,12,'2002/3/4')
insert into reserve values(2,13,'2003/5/4')
insert into reserve values(3,14,'2004/6/4')
insert into reserve values(4,15,'2005/3/4')
insert into reserve values(5,12,'2006/9/4')
insert into reserve values(1,13,'2007/3/4')
insert into reserve values(2,14,'2008/2/4')
insert into reserve values(3,15,'2009/6/4')
insert into reserve values(2,17,'2010/6/4')
insert into reserve values(6,17,'2010/6/4')
insert into reserve values(8,17,'2012/6/7')
select * from reserve
1.Find the names of the movies with second highest rating in telugu languages.
select mname from movies
where mrating in (select mrating from movies where mrating in (select top 2(mrating) 
from movies order by mrating desc))and mlanguage='telugu'
output:
mname
1.jalasa
2.Find the average rating of movies for each rating level that has at least two movies.
select avg(mrating) from movies where mrating in((select mrating from movies)intersect
(select mrating from movies))
OUTPUT:
   No Column name
1    8


3.Find the names of customers whose name ends with h and 
atleast three characters and who reserved English movies.
select distinct c.cname from Custome c, reserve r,movies m
where c.cname like '%___h' and m.mlanguage='English' and r.cid=c.cid 
OUTPUT:
	cname
1	rakesh
4.Find cname of customers who reserved movie ‘Bheemla Nayak’ and age between 30 to 50.
select distinct c.cname from Custome c, movies m,reserve r
where m.mname= 'BheemlaNayak' and c.age>30 and c.age<50 and r.cid=c.cid
output:
cname
1.deepak
2.rakesh
3.sai
5.Find the name of customers who have reserved both ‘Jalsa’ and ‘Bheemla Nayak’.
select distinct c.cname from Custome c, movies m,reserve  r
where m.mname= 'jalsa' and r.cid=c.cid
intersect
select distinct c.cname from Custome c, movies m,reserve r
where m.mname= 'BheemlaNayak' and r.cid=c.cid
output:
cname
amulya
deepak
neeraja
rakesh
rohit
sai
sravya
