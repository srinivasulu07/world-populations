/**select * from countries;
select * from population_years;**/
-- How many entries in the database are from Africa?
select count(*) from countries where continent="Africa";
-- What was the total population of Oceania in 2005?
select sum(population) from countries
join population_years on countries.id=population_years.country_id where continent="Oceania" and year=2005;
-- What is the average population of countries in South America in 2003?
select avg(population) from countries
join population_years on countries.id=population_years.country_id where continent="South America" and year=2003;
-- What country had the smallest population in 2007?
select name,population,year from countries
join population_years on countries.id=population_years.country_id where year=2007
order by population asc
limit 1;
-- What is the average population of Poland during the time period covered by this dataset?
select avg(population) from countries
join population_years on countries.id=population_years.country_id where name="Poland" and (year between 2000 and 2010);
select distinct year from population_years;
-- How many countries have the word "The" in their name?
select name from countries where name like "The%";
-- What was the total population of each continent in 2010?
select continent,population from countries
join population_years on countries.id=population_years.country_id where year=2010
group by 1
order by 2 desc;
