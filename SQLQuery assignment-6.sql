SELECT employee_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
  AND manager_id NOT IN (101, 200);

SELECT e.name AS employee_name, d.name AS department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
ORDER BY d.name ASC;

SELECT e.department_id, 
       COUNT(e.employee_id) AS num_employees, 
       AVG(e.salary) AS avg_salary
FROM employees e
GROUP BY e.department_id;



