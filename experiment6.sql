-- experiment number 5
-- 1. Display empno, ename, deptno from employee table. Instead of display department numbers display the related department name (Use decode function).
SELECT E.EMPNO, E.ENAME,
    -> CASE E.DEPTNO
    -> WHEN 10 THEN 'RESEARCH'
    -> WHEN 20 THEN 'ACCOUNTING'
    -> WHEN 30 THEN 'SALES'
    -> WHEN 40 THEN 'OPERATIONS'
    -> END AS DEPARTMENT FROM EMPLOYEE E;

-- 2. Display your age in days.
SELECT DATEDIFF(CURDATE(), '2006-08-26') AS DAYS;

-- 3. Display your age in months.
SELECT TIMESTAMPDIFF(MONTH, '2006-08-26', CURDATE()) AS AGE_IN_MONTH;

-- 4. Display the current date as 15th August Friday Nineteen Ninety-Seven.
SELECT DATE_FORMAT('2006-08-26', '%D %M %W %Y') AS DATE;

-- 5. Display the following output for each row from employee table.
-- 6. Scott has joined the company on Wednesday 13th August Nineteen Ninety
SELECT CONCAT(
    -> ENAME,
    -> ' has joined the company on ',
    -> DATE_FORMAT(hiredate, '%W %D %M %Y')
    -> ) AS FORMAT_DATA FROM EMPLOYEE;

-- 7. Find the date for nearest Saturday after current date.
INTERVAL(MOD(DAYOFWEEK(CURDATE() + 0), 7)) DAY AS NEXT_SAT;

-- 8. Display current time.
SELECT CURTIME();

-- 9. Display the date three months Before the current date
SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH) AS MONTH;

-- 10. Display those employees who joined in the company in the month of Dec.
SELECT * FROM EMPLOYEE
    -> WHERE MONTH(HIREDATE) = 12;

-- 11. Display those employees whose first 2 characters from hire date -last 2 characters of salary.
SELECT * FROM EMPLOYEE
    -> WHERE LEFT(YEAR(HIREDATE),2) = RIGHT(SAL,2);

-- 12. Display those employees whose 10% of salary is equal to the year of joining.
SELECT * FROM EMPLOYEE
    -> WHERE YEAR(hiredate) = sal * 0.10;

-- 13. Display those employees who joined the company before 15 of the months.
SELECT * FROM EMPLOYEE
    -> WHERE DAY(hiredate) < 15;

-- 14. Display those employees who has joined before 15th of the month
SELECT * FROM EMPLOYEE
    -> WHERE DAY(hiredate) < 15;

-- 15. Display those employees whose joining DATE is available in deptno
SELECT * FROM EMPLOYEE
    -> WHERE DAY(hiredate) = DEPTNO;

-- check output
SELECT * FROM employee;
SELECT * FROM department;  
