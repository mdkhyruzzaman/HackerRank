-- 1. Solution
SELECT DISTINCT city
FROM station
WHERE city LIKE '%a'
OR city LIKE '%e'
OR city LIKE '%i'
OR city LIKE '%o'
OR city LIKE '%u';

-- 2. Solution
SELECT DISTINCT city
FROM station
WHERE SUBSTR(city, LENGTH(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');