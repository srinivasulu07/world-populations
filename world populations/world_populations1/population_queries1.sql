/***select * from population_years;***/
--what are the distinct years in this dataset?
select distinct year from population_years;
--What is the largest population size for Gabon in this dataset?
select max(population) from population_years
where country="Gabon";
--What were the 10 lowest population countries in 2005?
SELECT *  from population_years
where year=2005
order by population asc
limit 10;
--What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT country FROM population_years
WHERE population > 100 AND year = 2010;
--How many countries in this dataset have the word “Islands” in their name?
SELECT DISTINCT country FROM population_years
WHERE country LIKE '%Islands%';
