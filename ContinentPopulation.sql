/*
Given two tables, City and Country whose description are given below. Print the name of all continents (key: Country.Continent) along with the average City population rounded down to nearest integer.
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
Country
+----------------+-------------+
| Field          | Type        |
+----------------+-------------+
| Code           | char(3)     |
| Name           | char(44)    |
| Continent      | char(13)    |
| Region         | char(25)    |
| SurfaceArea    | Number      |
| IndepYear      | char(5)     |
| Population     | Number      |
| LifeExpectancy | char(4)     |
| GNP            | Number      |
| GNPOld         | char(9)     |
| LocalName      | char(44)    |
| GovernmentForm | char(44)    |
| HeadOfState    | char(32)    |
| Capital        | char(4)     |
| Code2          | char(2)     |
+----------------+-------------+
PS #1: City.CountryCode and Country.Code is same key. 
PS #2: Continent without cities should not be included in output.
*/


/*
Asian Population
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT SUM(CITY.POPULATION)
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT LIKE 'Asia';



/*
African Cities
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT CITY.NAME
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
WHERE COUNTRY.CONTINENT LIKE 'Africa';



/*
Average Population of Each Continent
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.POPULATION)) AS 'AVERAGE'
FROM CITY
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent;
