SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY,1,1)) IN ('a', 'e', 'i', 'o', 'u')
AND LOWER(SUBSTR(city, LENGTH(CITY), 1)) IN ('a', 'e', 'i', 'o', 'u');