use world

create type CityUDD from nvarchar(10)
create type Tel from nvarchar(11) not null

create sequence incr_value
start with 1
increment by 1

create table Student(
   id int primary key ,
   std_name nvarchar(10) ,
   city_id CityUDD
)

insert into Student values
                (next value for incr_value, 'ahmed' , 'aswan') ,
                (next value for incr_value , 'mohammed' , 'cairo'),
                (next value for incr_value , 'ali' , 'alex') 

select * from Student

--------------------------------------------------------------------------------------------------------------

select * from Country

select Language distincit
from CountryLanguage

--select Language count() distincit
--from CountryLanguage

select*
from Country

select Name 
from Country
where Continent = 'Africa'

select * from City

select * from City
where Population > 2000000

select Name ,IndepYear from Country 
where IndepYear between 1920 and 1990

select Name from Country
where IndepYear is null

select * from Country
where GovernmentForm = 'Republic'

select * from Country
where Continent = 'Asia' and Population > 100000000

select CountryCode , IsOfficial , Language from CountryLanguage
where IsOfficial = 1 and Language = 'Spanish'


 select CountryCode , COUNT(*) from CountryLanguage
 group by CountryCode
 having COUNT(*)>2 
 

 select  sum(CONVERT(float , Population))
 from Country


 select Continent , COUNT(*) as 'number of countries' , sum(CONVERT(float , Population)) as 'population'
 from Country
 group by Continent


select Name from City 
where CountryCode = 
(select Code  from Country where Name = 'Egypt')


select Name from Country
where Code in
(
select  CountryCode from City where Population > 5000000
)

 select Name from Country
 where Code in
 ( select CountryCode from CountryLanguage
 where IsOfficial = 0 and Language = 'Dutch' )








