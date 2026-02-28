-- experiment number 5
-- 1. Display the total number of employee working in the company.
SELECT count(*) AS total_employees FROM employee;

-- 2. Display the total salary being paid to all employees.
SELECT SUM(SAL) AS TOTAL_SAL FROM EMPLOYEE;

-- 3. Display the maximum salary from employee table.
SELECT MAX(SAL) AS MAX_SAL FROM EMPLOYEE;

-- 4. Display the minimum salary from employee table.
SELECT MIN(SAL) AS MIN_SAL FROM EMPLOYEE;

-- 5. Display the average salary from employee table
SELECT AVG(SAL) AS AVG_SAL FROM EMPLOYEE;

-- 6. Display the maximum salary being paid to clerk.
SELECT MAX(SAL) AS MAX_SAL FROM EMPLOYEE
    -> WHERE JOB = 'CLERK';

-- 7. Display the maximum salary being paid in dept no 20.
SELECT MAX(SAL) AS MAX_SAL FROM EMPLOYEE WHERE DEPTNO = 20;

-- 8. Display the minimum salary paid to any salesman.
SELECT MIN(SAL) AS MIN_SAL FROM EMPLOYEE
    -> WHERE JOB = 'SALESMAN';

-- 9. Display the average salary drawn by managers.
SELECT AVG(SAL) AS AVG_SAL FROM EMPLOYEE
    -> WHERE JOB = 'MANAGER';

-- 10. Display the total salary drawn by analyst working in dept no 40.
SELECT SUM(SAL) AS TOTAL_SAL FROM EMPLOYEE
    -> WHERE JOB = 'ANALYST' AND DEPTNO = 40;

-- 11. Display the names of the employee in Uppercase.
SELECT UPPER(ENAME) AS NAME FROM EMPLOYEE;

-- 12. Display the names of the employee in Lowercase.
SELECT LOWER(ENAME) AS NAME FROM EMPLOYEE;

-- 13. Display the names of the employee in Proper case.
SELECT CONCAT(
    -> UPPER(LEFT(ENAME, 1)),
    -> LOWER(SUBSTRING(ENAME, 2)))
    -> AS NAME FROM EMPLOYEE;

-- 14. Display the length of Your name using appropriate function.
SELECT LENGTH('GAZIA KAUSAR') AS NAME_LENGTH;

-- 15. Display the length of all the employee names.
SELECT LENGTH(ENAME) AS NAME_LENGTH FROM EMPLOYEE;

-- check output
SELECT * FROM employee;
SELECT * FROM department;