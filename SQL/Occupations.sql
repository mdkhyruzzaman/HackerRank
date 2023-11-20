select doctor, professor, singer, actor
from (
select rownum as sl, name, OCCUPATION from(
select name, OCCUPATION
from OCCUPATIONS
where OCCUPATION = 'Doctor'
order by name)
union all
select rownum as sl, name, OCCUPATION from(
select name, OCCUPATION
from OCCUPATIONS
where OCCUPATION = 'Professor'
order by name)
union all
select rownum as sl, name, OCCUPATION from(
select name, OCCUPATION
from OCCUPATIONS
where OCCUPATION = 'Singer'
order by name)
union all
select rownum as sl, name, OCCUPATION from(
select name, OCCUPATION
from OCCUPATIONS
where OCCUPATION = 'Actor'
order by name))
pivot(
    max(name) for OCCUPATION in ('Doctor' doctor, 'Professor' professor, 'Singer' singer, 'Actor' actor)) 
    order by sl;
