USE company;

SELECT * FROM employee;

-- Names starting with J,K,L,M
SELECT ename
FROM employee
WHERE ename LIKE 'J%' OR ename LIKE 'K%' 
   OR ename LIKE 'L%' OR ename LIKE 'M%';

-- Employees hired before 15th of month
SELECT *
FROM employee
WHERE DAY(hire_date) <= 15;

-- 3rd lowest salary
SELECT salary
FROM (
    SELECT salary
    FROM employee
    ORDER BY salary ASC
    LIMIT 3
) AS t
ORDER BY salary DESC
LIMIT 1;

-- Alternate rows
SELECT *
FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY emp_id) AS rn
    FROM employee
) t
WHERE MOD(rn,2)=1;
