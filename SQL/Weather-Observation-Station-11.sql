SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a', 'e', 'i', 'o', 'u')
OR LOWER(SUBSTR(city, LENGTH(CITY), 1)) NOT IN ('a', 'e', 'i', 'o', 'u');