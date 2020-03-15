/*
         Employee
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| employee_id | INTEGER    |
| name        | STRING     |
| months      | INTEGER    |
| salary      | INTEGER    |
+-------------+------------+
*/


/*
We define an employee's total earnings to be their monthly salary*months worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 

Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

*/

SELECT (salary*months) AS earning, COUNT(*)
FROM employee
GROUP BY earning
ORDER BY earning DESC
LIMIT 1;
