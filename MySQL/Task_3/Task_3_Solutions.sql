# invalid tweets
SELECT tweet_id 
FROM Tweets
WHERE LENGTH(content)>15

# Fix Names in_a_Table
SELECT user_id , CONCAT(UPPER(SUBSTR(name,1,1)),LOWER(SUBSTR(name,2))) AS name
FROM Users
ORDER BY user_id;

# Calculate Special Bonus
SELECT employee_id , IF(employee_id % 2 != 0 AND LEFT(name, 1) != 'M', salary, 0) AS bonus
FROM Employees
ORDER BY employee_id;

# patients with_a condition
SELECT patient_id , patient_name , conditions
FROM Patients
WHERE conditions REGEXP '(^| )DIAB1';

# find total_time spent_by_each employee
SELECT
    event_day AS day,
    emp_id,
    SUM(out_time) - SUM(in_time) AS total_time
FROM Employees
GROUP BY emp_id, event_day;

# find_followers_count
SELECT user_id , count( follower_id ) As followers_count 
FROM Followers
GROUP BY user_id
ORDER BY user_id;

# Daily Leads_and Partners
SELECT date_id , make_name , COUNT(DISTINCT lead_id) AS unique_leads , COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id , make_name ;

# Actors and Directors Who Cooperated At Least Three
SELECT actor_id , director_id
FROM ActorDirector 
GROUP BY actor_id , director_id
HAVING COUNT(*) >=3;

# Classes With at Least 5 Students
SELECT class
FROM Courses
GROUP BY class 
HAVING COUNT(student)>=5;

# Game Play Analysis I
SELECT player_id , MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

#  Capital Gain/Loss
SELECT stock_name , SUM(CASE WHEN operation ='Buy' THEN -price  WHEN operation ='Sell' THEN price END)
AS capital_gain_loss
FROM Stocks
GROUP BY stock_name;


# Second Highest Salary
SELECT (
SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1
)
AS  SecondHighestSalary ;

