# SQL Query Bug: NULL Salary Handling

This repository demonstrates a common SQL error related to NULL values in WHERE clauses when performing comparisons on numeric columns.  The `bug.sql` file contains a query that unintentionally excludes employees with NULL salaries. The `bugSolution.sql` file shows how to correct this using the IS NULL or IS NOT NULL operators or COALESCE function.

**Problem:** The original query incorrectly assumes that all salaries are non-NULL.  When filtering for salaries greater than a certain value, employees with NULL salaries are excluded, leading to incomplete or inaccurate results.

**Solution:**  Properly handle NULL values using the `IS NULL` or `IS NOT NULL` operators or the COALESCE function to replace NULLs with a default value (e.g., 0) before the comparison.