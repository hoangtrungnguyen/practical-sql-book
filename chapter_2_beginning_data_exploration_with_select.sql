----
--  EXAMPLE
--
----
SELECT * FROM teachers WHERE school = 'Myers Middle School'
    AND salary < 40000;

SELECT teachers.first_name, teachers.last_name, teachers.hire_date FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

----
-- TRY IT YOUR-SELF 1
-- The school district superintendent asks for a list of teachers in each school.
-- Write a query that lists the schools in alphabetical order along with teachers ordered by last name A–Z
----
SELECT school, first_name, last_name FROM teachers ORDER BY  last_name;


-----------
-- Try it your-self 2:
-- Write a query that finds the one teacher whose first name starts with the letter S and who earns more than $40,000.
-----------

SELECT first_name, teachers.salary FROM teachers WHERE salary > 40000 AND first_name ILIKE 'S%';

----
-- Try it your-self 3:
--  Rank teachers hired since January 1, 2010, ordered by highest paid to lowest.
----
SELECT * FROM teachers WHERE hire_date > '2010-01-01' ORDER BY salary DESC;