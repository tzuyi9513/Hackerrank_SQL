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
Revising the Select Query I
Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.
*/

SELECT * FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';



/*
Revising the Select Query II
Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.
*/

SELECT name FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';



/*
Select All
Query all columns (attributes) for every row in the CITY table.
*/

SELECT * FROM CITY;



