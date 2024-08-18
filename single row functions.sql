select getdate()
Output:
(No column name)
2022-05-08 18:17:38.717
select getdate() as date
Output:
date
2022-05-08 18:44:11.330

select CURRENT_TIMESTAMP as Date
output:
Date
2022-05-08 19:10:38.077

select SYSDATETIMEOFFSET() as Date
Output:
Date
2022-05-08 19:17:53.9085191 +05:30

select datepart(day,'2021/09/10') as result1,
DatePart(month,'2021/09/10') as result2,
datepart(year,'2021/09/10') as result3
Output:
 result1	   result2	result3
  10	       9	 2021

select year('2021/09/8') as result1,
year('2012/05/17') as result2

output:
result1	result2
2021	2012

select day('2021/09/8') as result1,
day('2012/05/17') as result2

select datediff(dd,'2019/2/3','2020/3/5')as totaldays,
datediff(MM,'2019/2/3','2020/3/5')as totalmonths,
datediff(WK,'2019/2/3','2020/3/5')as totalweeks
Output:
totaldays	totalmonths	   totalweeks
396       	   13	           56

select dateadd(second,1,'2020/12/31 23:59:59') as result1,
dateadd(day,1,'2020/12/31 20:59:59')as result2
output:
result1                  	   result2
2021-01-01 00:00:00.000 	2021-01-01 20:59:59.000

select EOMONTH('2020/02/22') as end_of_feb2020,
EOMONTH('2020/02/22') as end_of_feb2021
Output:
end_of_feb2020	 end_of_feb2021
2020-02-29	       2020-02-29

select DATEFROMPARTS(2019,12,31) as result1,
DATEFROMPARTS(2019,NULL,31) as result2
output:
result1  	result2
2019-12-31	 NULL

select DATETIME2FROMPARTS(2029,10,31,11,59,59,0,0) as result1,
DATETIME2FROMPARTS(2029,null,31,11,59,59,0,0) as result2
output:
result1	               result2
2029-10-31 11:59:59   	NULL

select ISDATE('2020/06/15') as result1,
ISDATE('2020/15/06') as result2
output:
result1	 result2
1	       0

select ASCII('A'),ASCII('B')
Output:
(No column name)	(No column name)
    65						66

select CHARINDEX('javatpoint','hello javatpoint'),CHARINDEX('javatpoint','hello javatpoint',8)
Output:
(No column name)	(No column name)
7							0

select CONCAT('hello','javatpoint')
Output:
(No column name)
hellojavatpoint

select DIFFERENCE('hello','bicycle'),DIFFERENCE('hello','hello world')
output:
(No column name)	(No column name)
1							4

select left('hello javatpoint',5),right('hello javatpoint',5)
output:
(No column name)	(No column name)
hello					point

select lower('hello javatpoint'),upper('hello javatpoint')
output:
(No column name)	(No column name)
hello javatpoint	HELLO JAVATPOINT

select RTRIM('javatpoint  '),LTRIM('  javatpoint')
output:
(No column name)	(No column name)
javatpoint				javatpoint

select REPLICATE('javatpoint',4)
output:
(No column name)
javatpointjavatpointjavatpointjavatpoint











