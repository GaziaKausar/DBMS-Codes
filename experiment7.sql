-- experiment number 7
-- 1. Compute the no. of days remaining in this year.
SELECT DATEDIFF('2026-12-31', CURDATE()) AS REMAINING_DAYS;

-- 2. Find the highest and lowest salaries and the difference between of them.
SELECT MAX(SAL)-MIN(SAL) AS SALARY_DIFF FROM EMPLOYEE;

-- 3. List employee whose commission is greater than 25 % of their salaries.
SELECT * FROM EMPLOYEE
    -> WHERE COMM > (SAL*0.25);

-- 4. Make a query that displays salary in dollar format.
SELECT ENAME, CONCAT('$ ', SAL) AS SAL_IN_DOLLAR FROM EMPLOYEE;

-- 5. Create a matrix query to display the job, the salary for that job based on department number, and the total salary for that job for all departments, giving each column an appropriate heading.
SELECT JOB,
    -> SUM(CASE WHEN DEPTNO = 10 THEN SAL ELSE 0 END) AS DEPT10,
    -> SUM(CASE WHEN DEPTNO = 20 THEN SAL ELSE 0 END) AS DEPT20,
    -> SUM(CASE WHEN DEPTNO = 30 THEN SAL ELSE 0 END) AS DEPT30,
    -> SUM(CASE WHEN DEPTNO = 40 THEN SAL ELSE 0 END) AS DEPT40,
    -> SUM (SAL) FROM EMPLOYEE GROUP BY JOB;

-- 6. Query that will display the total no of employees, and of that total the number who were hired in 1980,1981,1982 and 1983. Give appropriate column heading.
SELECT COUNT(*) AS TOTAL_EMP_HIRED, YEAR(HIREDATE) AS YEAR FROM EMPLOYEE GROUP BY YEAR(HIREDATE);

-- 7. Query to get the last Sunday of Any Month.
SELECT DATE_SUB(
    -> LAST_DAY(CURDATE()),
    -> INTERVAL(DAYOFWEEK(LAST_DAY(CURDATE()))-1) DAY) AS LAST_SUNDAY;

-- 8. Display department numbers and total number of employees working in each department.
SELECT COUNT(*) AS TOTAL_EMP, DEPTNO FROM EMPLOYEE GROUP BY DEPTNO;

-- 9. Display the various jobs and total number of employees within each job group.
SELECT COUNT(*) AS TOTAL_EMP, JOB FROM EMPLOYEE GROUP BY JOB;

-- 10. Display the depart numbers and total salary for each department.
SELECT SUM(SAL) AS TOTAL_SAL, DEPTNO FROM EMPLOYEE GROUP BY DEPTNO;

-- check output
SELECT * FROM employee;
SELECT * FROM department; 