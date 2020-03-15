/*
         City
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | Number   |
| Name        | char(17) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | Number   |
+-------------+----------+
*/


/*
Query a count of the number of cities in CITY having a Population larger than
*/

SELECT COUNT(*)
FROM city
WHERE population >100000;



/*
Query the total population of all cities in CITY where District is California.
*/

SELECT SUM(population)
FROM city
WHERE district = 'California';



/*
Query the average population of all cities in CITY where District is California.
*/

SELECT AVG(population)
FROM city
WHERE district = 'California';



/*
Query the average population for all cities in CITY, rounded down to the nearest integer.
*/

SELECT ROUND(AVG(population),0)
FROM city;



/*
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
*/

SELECT SUM(population)
FROM city
WHERE countrycode = 'JPN';


/*
Query the difference between the maximum and minimum populations in CITY.
*/

SELECT MAX(population)-MIN(population) AS difference
FROM city;
