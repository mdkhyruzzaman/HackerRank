select earning, count(employee_id)
from (select salary*months earning, employee_id
    from employee)
group by earning
having earning = (select max(salary*months) from employee);