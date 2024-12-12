```sql
-- Solution 1: Using IS NULL or IS NOT NULL
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);

-- Solution 2: Using COALESCE to replace NULLs
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```