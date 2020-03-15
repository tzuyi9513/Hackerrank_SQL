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
Select By ID
Query all columns for a city in CITY with the ID 1661.
*/

SELECT * FROM CITY
WHERE ID = 1661;



/*
Japanese Cities' Attributes
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN';



/*
Japanese Cities' Names
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

SELECT name FROM CITY
WHERE countrycode = 'JPN';



