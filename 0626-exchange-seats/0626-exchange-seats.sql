# Write your MySQL query statement below
SELECT 
       IF(id % 2 = 0, id - 1, IF((id + 1) IN (SELECT id FROM Seat), id + 1, id)) AS id, student
FROM Seat
ORDER BY id;
