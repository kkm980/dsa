# Write your MySQL query statement below

# SELECT s.name
# FROM SalesPerson s
# WHERE s.sales_id NOT IN (
#     SELECT o.sales_id
#     FROM Orders o
#     JOIN Company c ON o.com_id = c.com_id
#     WHERE c.name = 'RED'
# );


SELECT s.name
FROM SalesPerson s
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders o
    JOIN Company c ON o.com_id = c.com_id
    WHERE o.sales_id = s.sales_id
      AND c.name = 'RED'
);
