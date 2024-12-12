```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might cause issues if the `salary` column allows NULL values. If an employee in the Sales department has a NULL salary, this query will exclude them from the results, even if their salary might be above 100000.  The comparison `salary > 100000` will evaluate to UNKNOWN for NULL values and UNKNOWN is treated as false in a WHERE clause.