  
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
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.

*/

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2) FROM station;


/*
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. 
Truncate your answer to 4 decimal places.
*/


SELECT ROUND(SUM(LAT_N),4) FROM station
WHERE LAT_N > 38.7880 AND LAT_N <137.2345;



/*
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. 
Truncate your answer to 4 decimal places.
*/

SELECT ROUND(LAT_N,4) FROM station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;



/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. 
Round your answer to 4 decimal places.
*/

SELECT ROUND(LONG_W,4) FROM station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;


/*
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
Round your answer to 4 decimal places.
*/

SELECT ROUND(LAT_N,4) FROM station
WHERE LAT_N > 38.7780
ORDER BY LAT_N 
LIMIT 1;


/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. 
Round your answer to  decimal places.
*/

SELECT ROUND(LONG_W,4) FROM station
WHERE LAT_N > 38.7780
ORDER BY LAT_N 
LIMIT 1;



/*
Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.

a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

Manhattan distance:
The distance between two points measured along axes at right angles. 
In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.
*/

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N))+ABS(MIN(LONG_W)-MAX(LONG_W)),4) FROM station;
                                            
/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.
                                            
Euclidean Distance:                                             
https://en.wikipedia.org/wiki/Euclidean_distance

*/

                                            
SELECT ROUND(
    SQRT(
    POWER((MIN(LAT_N)-MAX(LAT_N)),2)+POWER((MIN(LONG_W)-MAX(LONG_W)),2)
            )
            ,4) FROM station;
