# Duplicate Emails
SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email)>1;

# Delete Duplicate Emails
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email
AND p1.id > p2.id;

# Nth Highest Salary
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
 SELECT MAX(salary)
      FROM Employee e1
      WHERE (
          SELECT COUNT(DISTINCT e2.salary)
          FROM Employee e2
          WHERE e2.salary > e1.salary
      ) = N - 1
  );
END

# Rank Scores
SELECT 
    s1.score,
    (
        SELECT COUNT(DISTINCT s2.score)
        FROM Scores s2
        WHERE s2.score > s1.score
    ) + 1 AS `rank`
FROM Scores s1
ORDER BY s1.score DESC;

# Department Highest Salary
# Write your MySQL query statement below
SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM Employee e
JOIN Department d
    ON e.departmentId = d.id
JOIN (
    SELECT departmentId, MAX(salary) AS max_salary
    FROM Employee
    GROUP BY departmentId
) t
    ON e.departmentId = t.departmentId AND e.salary = t.max_salary;

