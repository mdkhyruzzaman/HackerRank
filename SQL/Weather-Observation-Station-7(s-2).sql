SELECT DISTINCT city
FROM station
WHERE SUBSTR(city, LENGTH(CITY), 1) IN ('a', 'e', 'i', 'o', 'u');