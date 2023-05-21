

//Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
//The STATION table is described as follows:

SQL.jpg

SELECT CITY, LENGTH(CITY) AS Length FROM STATION 
WHERE LENGTH(CITY) = (
SELECT MIN(LENGTH(CITY))
    FROM STATION
)
ORDER BY CITY
LIMIT 1

UNION

SELECT CITY, LENGTH(CITY) AS Length FROM STATION 
WHERE LENGTH(CITY) = (
SELECT MAX(LENGTH(CITY))
    FROM STATION 
)
ORDER BY CITY
LIMIT 1;