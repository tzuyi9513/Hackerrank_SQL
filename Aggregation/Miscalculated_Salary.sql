  
/*
         Employee
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| name        | STRING     |
| salary      | INTEGER    |
+-------------+------------+
*/

/*
Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, 
but did not realize her keyboard's "0" key was broken until after completing the calculation. 
She wants your help finding the difference between her miscalculation, and the actual average salary.

Write a query calculating the amount of error (i.e.: actual-miscalculated average monthly salaries), and round it up to the next integer.
*/

SELECT ROUND(AVG(salary))-ROUND(AVG(REPLACE(Salary, '0',''))) AS difference
FROM Employees;
