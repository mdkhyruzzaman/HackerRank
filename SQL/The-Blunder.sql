select ceil(avg(salary)-avg(to_number(replace(salary, 0, ''))))
from employees;