  
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

