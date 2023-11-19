select re
from (select name||'('||substr(OCCUPATION,1,1)||')' re
from OCCUPATIONS
order by name)
union
select 'There are a total of '||per||' '||lower(OCCUPATION)||'s.' re
from (select OCCUPATION, count(OCCUPATION) per
from OCCUPATIONS
group by OCCUPATION
order by count(OCCUPATION));
