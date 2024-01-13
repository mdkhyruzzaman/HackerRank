--1. Solubtion
select n, 'Root'
from BST
where p is null
union
select n, 'Leaf'
from BST
where n not in (select p from BST where p is not null)
union
select n, 'Inner'
from BST
where p is not null
and n in (select p from BST where p is not null)
order by n;

--2. Solubtion
select n, case
            when p is null then 'Root'
            when n in (select p from BST) then 'Inner'
            else 'Leaf'
        end node
from BST
order by n;