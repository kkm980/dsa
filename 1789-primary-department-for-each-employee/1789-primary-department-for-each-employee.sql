# Write your MySQL query statement below
SELECT 
    employee_id,
    COALESCE(
        MAX(CASE WHEN primary_flag = 'Y' THEN department_id END),
        department_id
    ) AS department_id
FROM Employee
GROUP BY employee_id;


