select ct.name
from city ct
join country ctr
on (ct.countrycode = ctr.code)
where continent = 'Africa';