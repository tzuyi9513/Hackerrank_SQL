/*
          STATION
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | NUMBER     |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMBER     |
| LONG_W      | NUMBER     |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/


/*
Weather Observation Station 1
Query a list of CITY and STATE from the STATION table.
*/

SELECT CITY, STATE FROM STATION;


/*
Weather Observation Station 3
Query a list of CITY names from STATION with even ID numbers only.
You may print the results in any order, but must exclude duplicates from your answer.
*/

SELECT DISTINCT CITY FROM STATION
WHERE ID%2 = 0;



/*
Weather Observation Station 4
Let N be the number of CITY entries in STATION, and let N' be the number of distinct CITY names in STATION;
query the value of N-N' from STATION. 
In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
*/

SELECT COUNT(*)-COUNT(DISTINCT CITY) AS "N-N'"
FROM STATION;



/*
Weather Observation Station 5
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
(i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
*/

SELECT city, length(city) FROM station
ORDER BY length(city) DESC, city
LIMIT 1;

SELECT city, length(city) FROM station
ORDER BY length(city) ASC, city
LIMIT 1;



/*
Weather Observation Station 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station
WHERE city LIKE "a%" OR city LIKE "e%" OR city LIKE "i%" OR city LIKE "o%" OR city LIKE "u%";



/*
Weather Observation Station 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station 
WHERE city LIKE "%a" OR city LIKE "%e" OR city LIKE "%i" OR city LIKE "%o" OR city LIKE "%u";



/*
Weather Observation Station 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
*/

SELECT DISTINCT city FROM station 
WHERE left(city,1) IN ('a','e','i','o','u') 
AND right(city, 1) IN ('a','e','i','o','u');



/*
Weather Observation Station 9
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station
WHERE LEFT(city,1) NOT IN ('a','e','i','o','u');



/*
Weather Observation Station 10
Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) NOT IN ('a','e','i','o','u');



/*
Weather Observation Station 11
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station
WHERE left(city,1) NOT IN ('a','e','i','o','u') 
OR right(city, 1) NOT IN ('a','e','i','o','u');



/*
Weather Observation Station 12
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.
*/

SELECT DISTINCT city
FROM station
WHERE left(city,1) NOT IN ('a','e','i','o','u') 
AND right(city, 1) NOT IN ('a','e','i','o','u');




