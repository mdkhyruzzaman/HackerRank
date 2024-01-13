select company_code, founder,
    (select count(distinct lead_manager_code) from lead_manager lm where lm.company_code = c.company_code) lead_manager,
    (select count(distinct senior_manager_code) from senior_manager lm where lm.company_code = c.company_code) senior_manager,
    (select count(distinct manager_code) from manager lm where lm.company_code = c.company_code) manager,
    (select count(distinct employee_code) from employee lm where lm.company_code = c.company_code) employee
from company c
order by company_code;