/*
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

Students
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | integer  |
| Name        | String   |
| Marks       | integer  |
+-------------+----------+


Grades
+-------------+----------+----------+
| Grade       | Min_Mark | Max_Mark |
+-------------+----------+----------+
| 1           | 0        | 9        |
| 2           | 10       | 19       |
| 3           | 20       | 29       |
| 4           | 30       | 39       |
| 5           | 40       | 49       |
| 6           | 50       | 59       |
| 7           | 60       | 69       |
| 8           | 70       | 79       |
| 9           | 80       | 89       |
| 10          | 90       | 100      |
+-------------+----------+----------+

*/

/*
Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. 
1. Ketty doesn't want the NAMES of those students who received a grade lower than 8. 
2. The report must be in descending order by grade -- i.e. higher grades are entered first. 
3. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. 
4. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. 
5. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.
*/


SELECT CASE WHEN (students.marks < 70) THEN 'NULL' ELSE students.name END,
    Grades.grade, students.marks
FROM students, grades
WHERE students.marks >= grades.Min_Mark AND students.marks <= grades.Max_Mark
ORDER BY Grades.grade DESC, students.name ASC, students.marks ASC;
