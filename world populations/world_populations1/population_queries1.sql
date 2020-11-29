/***select * from population_years;
select distinct year from population_years;
select max(population) from population_years
where country="Gabon";
SELECT *  from population_years
where year=2005
order by population asc
limit 10;***/
select * from population_years
where country="Indonesia" and (year=2000 or year=2010);
