/*1.Write a SQL query to find the salaries of all employees. Return salary.*/
SELECT salary FROM employee;

/*2.Write a SQL query to find the unique designations of the employees. Return job name*/
SELECT DISTINCT  job_name FROM employee;

/*3.Write a SQL query to list the employees’ name, increased their salary by 15%*/
SELECT emp_name, (0.15*salary) AS Salary FROM employee;

/*4.Write a SQL query to list the employee's name and job name as a format of "Employee & Job"'*/
SELECT emp_name AS Employee, dep_name AS Job FROM employee INNER JOIN department ON employee.dep_id = department.dep_id;

/*5.Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.*/
SELECT emp_id, emp_name, salary, CONVERT(varchar(20), hire_date, 107) AS hire_date_formatted FROM employee WHERE hire_date LIKE '1991-04-01%';
SELECT emp_id, emp_name, salary, CONVERT(varchar(20), hire_date, 107) AS hire_date_formatted FROM employee WHERE hire_date LIKE 'February 22, 1991';

/*6.Write a SQL query to count the number of employees who have total income more than 2200*/
SELECT COUNT(emp_id) AS number_of_employees FROM employee WHERE salary > 2200;

/*7.Write a SQL query to find the unique jobs with their corresponding department id.*/
SELECT DISTINCT job_name, dep_id FROM employee;

/*8.Write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees.*/
SELECT * FROM employee WHERE dep_id <> 2001;

/*9.Write a SQL query to find those employees who joined before 1991. Return complete information about the employees*/
SELECT * FROM employee WHERE hire_date < '1991-01-01';

/*10.Write a SQL query to calculate the average salary of employees who work as analysts. Return average salary.*/
SELECT AVG(salary) AS average_salary FROM employee WHERE job_name = 'ANALYST';

/*11.Write a SQL query to find the details of the employees who's name start start with B or end with E*/
SELECT * FROM employee WHERE emp_name LIKE 'B%' OR emp_name LIKE '%E';

/*12.Write a SQL query to find the details of the employees who's department name start start with B or end with E*/
SELECT * FROM employee INNER JOIN department ON employee.dep_id = department.dep_id WHERE dep_name LIKE 'B%' OR dep_name LIKE '%E';

/*13.Write a SQL query to find the details of the employees who's department location start start with F or end with N*/
SELECT * FROM employee INNER JOIN department ON employee.dep_id = department.dep_id WHERE dep_location LIKE 'F%' OR dep_location LIKE '%N';

/*14.Write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees, department location and department name*/
SELECT employee.*, department.dep_name, department.dep_location FROM employee INNER JOIN department ON employee.dep_id = department.dep_id WHERE employee.commission > employee.salary;

/*15.Write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase*/
SELECT * FROM employee WHERE (salary * 0.25) > 3000;

/*16.Write a SQL query to find out which employees joined in the month of January. Return complete information about the employees.*/
SELECT * FROM employee WHERE MONTH(hire_date) = 1;

/*17.Write a SQL query to separate the names of employees and their managers by the string 'works for'.*/
SELECT e.emp_name + ' works for ' + m.emp_name AS relationship FROM employee e INNER JOIN employee m ON e.manager_id = m.emp_id;

/*18.Write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name = 'CLERK';

/*19.Write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees.*/
SELECT * FROM employee WHERE DATEDIFF(YEAR, hire_date, GETDATE()) > 27;

/*20.Write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees.*/
SELECT * FROM employee WHERE salary < 3500;

/*21.Write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary.*/
SELECT emp_id, emp_name, salary FROM employee WHERE job_name = 'ANALYST';

/*22.Write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE YEAR(hire_date) = 1991;

/*23.Write a SQL query to identify those employees who joined the company after 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE YEAR(hire_date) > 1991;

/*24.Write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.*/
SELECT * FROM employee WHERE hire_date < '1991-04-01';

/*25.Write a SQL query identify the employees who do not report to a manager. Return employee name, job name.*/
SELECT emp_name, job_name FROM employee WHERE manager_id is NULL;
SELECT * FROM employee;

/*26.Write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE hire_date = '1991-05-01';

/*27.Write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience*/
SELECT dep_id, emp_name, salary, DATEDIFF(YEAR, hire_date, GETDATE()) AS experience FROM employee WHERE manager_id = 68319;

/*28.Write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.*/
SELECT dep_id, emp_name, salary, (salary / 30) AS salary_per_dat, DATEDIFF(YEAR, hire_date, GETDATE()) AS experience FROM employee WHERE (salary / 30) > 100;

/*29.Write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.*/
SELECT emp_name FROM employee WHERE hire_date > '1999-12-31' AND DATEDIFF(year, hire_date, GETDATE()) >= 8;

/*30.Write a SQL query to identify the employees whose salaries are odd. Return complete information about the employee*/
SELECT * FROM employee WHERE salary % 2 <> 0;

/*31.Write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees.*/
SELECT * FROM employee WHERE salary BETWEEN 100 AND 999;

/*32.Write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees*/
SELECT * FROM employee WHERE MONTH(hire_date) = 4;

/*33.Write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees*/
SELECT * FROM employee WHERE DAY(hire_date) < 19;

/*34.Write a SQL query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name = 'SALESMAN' AND DATEDIFF(MONTH, hire_date, GETDATE()) > 10;

/*35.Write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE dep_id = 3001 OR dep_id = 1001 AND YEAR(hire_date) = 1991;

/*36.Write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees.*/
SELECT * FROM employee WHERE dep_id = 2001 OR dep_id = 1001 ;

/*37.Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name = 'CLERK' AND dep_id = 2001;

/*38.Write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name = 'CLERK' OR job_name = 'MANAGER';

/*39.Write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees.*/
SELECT * FROM employee WHERE MONTH(hire_date) <> 2;

/*40.Write a SQL query to identify the employees who joined the company in June 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE MONTH(hire_date) = 6 AND YEAR(hire_date) = 1991;

/*41.Write a SQL query to search for all employees with an annual salary between 24000 and 50000 (Begin and end values are included.). Return complete information about the employees.*/
SELECT *, (salary * 12) AS annual_salary FROM employee WHERE (salary * 12) BETWEEN 24000 AND 50000;

/*42.Write a SQL query to identify all employees who joined the company on 1st May, 20th February, and 3rd December 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE hire_date = '1991-05-01' OR hire_date = '1991-02-20' OR hire_date = '1991-12-03';
SELECT * FROM employee;
/*43.Write a SQL query to find out which employees are working under the managers 63679, 68319, 66564, or 69000. Return complete information about the employees.*/
SELECT * FROM employee WHERE manager_id = 63679 OR manager_id = 68319 OR manager_id = 66564 OR manager_id = 69000;
SELECT * FROM employee WHERE manager_id IN (63679, 68319, 66564, 69000);
/*44.Write a SQL query to find those employees who joined in 90's.' Return complete information about the employees.*/
SELECT * FROM employee WHERE YEAR(hire_date) BETWEEN 1990 AND 1999;

/*45.Write a SQL query to find those managers who are in the department 1001 or 2001. Return complete information about the employees.*/
SELECT * FROM employee WHERE dep_id IN (2001, 1001);

/*46.Write a SQL query to identify employees who joined in the month of FEBRUARY with a salary range of 1001 to 2000 (Begin and end values are included.). Return complete information about the employees.*/
SELECT * FROM employee WHERE MONTH(hire_date) = 2 AND salary BETWEEN 1001 AND 2000;

/*47.Write a SQL query to find those employees who joined before or after the year 1991. Return complete information about the employees.*/
SELECT * FROM employee WHERE YEAR(hire_date) > 1991 OR YEAR(hire_date) < 1991;
SELECT * FROM employee WHERE YEAR(hire_date) <> 1991;
/*48.Write a SQL query to find employees along with their department details. Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID, and department name.*/
SELECT e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.commission, d.dep_id, d.dep_name FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id; 

/*49.Write a SQL query to identify those employees who earn 60000 or more per year or do not work as ANALYST. Return employee name, job name, (12*salary) as Annual Salary, department ID, and grade.*/
SELECT * FROM employee WHERE (salary * 12) >= 60000 OR job_name <> 'ANALYST';

/*50.Write a SQL query to identify employees whose salaries are higher than their managers' salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary*/
SELECT e.emp_name, e.job_name, e.salary, e.manager_id, m.emp_name AS manager_name, m.salary AS manager_salary FROM employee e INNER JOIN employee m ON e.manager_id = m.emp_id WHERE e.salary > m.salary;

/*51.Write a SQL query to find those employees whose salary is between 2000 and 5000 (Begin and end values are included.) and location is PERTH. Return employee name, department ID, salary, and commission*/
SELECT * FROM employee WHERE salary BETWEEN 2000 AND 5000;

/*52.Write a SQL query to find the employees whose department ID is 1001 or 3001 and whose salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name.*/
SELECT sg.grade, e.emp_name FROM employee e INNER JOIN salary_grade sg ON e.salary BETWEEN sg.min_salary AND sg.max_salary WHERE e.dep_id IN (1001, 3001) AND sg.grade <> 4 AND e.hire_date < '1992-12-31';

/*53.Write a SQL query to find those employees whose manager name is JONAS. Return employee id, employee name, job name, manager ID, hire date, salary, department ID, employee name.*/
SELECT e.emp_id, e.emp_name, e.job_name, e.manager_id, e.hire_date, e.salary, e.dep_id, m.emp_name AS manager_name FROM employee e JOIN employee m ON e.manager_id = m.emp_id WHERE m.emp_name = 'JONAS';

/*54.Write a SQL query to find the name and salary of the employee FRANK. Salary should be equal to the maximum salary within his or her salary group.*/
SELECT e.emp_name, MAX(s.max_salary) AS salary FROM employee e JOIN salary_grade s ON e.salary BETWEEN s.min_salary AND s.max_salary WHERE e.emp_name = 'FRANK' AND e.salary=s.max_salary GROUP BY e.emp_name, e.salary;

/*55.Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name IN ('MANAGER', 'ANALYST') AND salary BETWEEN 2000 AND 5000 AND commission is NULL;

/*56.Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name IN ('MANAGER', 'ANALYST') AND salary BETWEEN 2000 AND 5000 AND commission is NULL;

/*57.From the following table, write a SQL query to find the employees who joined in 1991 and whose department location is SYDNEY or MELBOURNE with a salary range of 2000 to 5000. Return employee ID, employee name, department ID, salary, and department location.*/
SELECT e.emp_id, e.emp_name, e.dep_id, e.salary, d.dep_location FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id WHERE YEAR(e.hire_date) = 1991 AND d.dep_location IN ('SYDNEY', 'MELBOURNE') AND e.salary BETWEEN 2000 AND 5000;

/*58.Write a SQL query to find the employees of MARKETING department come from MELBOURNE or PERTH, are in grades 3 ,4, and 5 and have at least 25 years of experience. 
Return department ID, employee ID, employee name, salary, department name, department location and grade.*/
SELECT d.dep_id, e.emp_id, e.emp_name, e.salary, d.dep_name, d.dep_location, g.grade FROM employee e JOIN department d ON e.dep_id = d.dep_id JOIN salary_grade g ON e.salary BETWEEN g.min_salary AND g.max_salary
WHERE d.dep_name = 'MARKETING' AND d.dep_location IN ('MELBOURNE', 'PERTH') AND g.grade IN (3, 4, 5) AND DATEDIFF(year, e.hire_date, GETDATE()) >= 25;

/*59.Write a SQL query to find those employees who are senior to their manager. Return complete information about the employees.*/
SELECT e.* FROM employee e JOIN employee m ON e.manager_id = m.emp_id WHERE e.hire_date < m.hire_date;

/*60.Write a SQL query to determine which employees have a grade of 4 and a salary between the minimum and maximum. Return all information of each employees and their grade and salary related details*/
SELECT e.*, sg.grade, sg.min_salary, sg.max_salary FROM employee e INNER JOIN salary_grade sg ON e.salary BETWEEN sg.min_salary AND sg.max_salary WHERE sg.grade = 4;

/*61.Write a SQL query to find those employees who joined after 1991, excluding MARKER or ADELYN in the departments PRODUCTION or AUDIT. Return employee name.*/
SELECT e.* FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id WHERE YEAR(hire_date) > 1991 AND emp_name NOT IN ('MARKER', 'ADELYN') AND dep_name IN ('PRODUCTION', 'AUDIT');

/*62.Write a SQL query to find the employees and their salaries. Sort the result-set in ascending order by salaries. Return complete information about the employees.*/
SELECT * FROM employee ORDER BY salary;

/*63.Write a SQL query to list employees in ascending order on department ID and descending order on jobs. Return complete information about the employees.*/
SELECT * FROM employee ORDER BY dep_id , job_name DESC;

/*64.Write a SQL query to sort the unique jobs in descending order. Return job name.*/
SELECT DISTINCT job_name FROM employee ORDER BY job_name DESC;

/*65.Write a SQL query to rank the employees according to their annual salary in ascending order. Return employee ID, employee name, monthly salary, salary/30 as Daily_Salary, and 12*salary as Anual_Salary.*/
SELECT emp_id, emp_name, salary AS monthly_salary, (salary / 30) AS Daily_Salary, (salary * 12) AS Anual_Salary FROM employee ORDER BY Anual_Salary ASC;

/*66.Write a SQL query to find those employees who are either 'CLERK' or 'ANALYST’. Sort the result set in descending order on job_name. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name IN ('CLERK', 'ANALYST') ORDER BY job_name DESC;

/*67.Write a SQL query to find the department location of employee ‘CLARE’. Return department location.*/
SELECT dep_location FROM department d INNER JOIN employee e ON d.dep_id = e.dep_id WHERE job_name = 'CLERK';

/*68.Write a SQL query to find those employees who joined on 1-MAY-91, or 3-DEC-91, or 19-JAN-90. Sort the result-set in ascending order by hire date. Return complete information about the employees.*/
SELECT * FROM employee WHERE hire_date IN ('1991-05-01', '1990-01-19', '1991-12-03') ORDER BY hire_date;

/*69.Write a SQL query to find those employees who earn less than 1000. Sort the result-set in ascending order by salary. Return complete information about the employees.*/
SELECT * FROM employee WHERE salary < 1000 ORDER BY salary;

/*70.Write a SQL query to list the employees in ascending order based on salary. Return complete information about the employees.*/
SELECT * FROM employee ORDER BY salary ASC;

/*71.Write a SQL query to list the employees in the ascending order by job title and in descending order by employee ID. Return complete information about the employees.*/
SELECT * FROM employee ORDER BY job_name ASC, emp_id DESC;

/*72.Write a SQL query to list the unique jobs of department 2001 and 3001 in descending order. Return job name.*/
SELECT DISTINCT job_name FROM employee WHERE dep_id IN (2001, 3001) ORDER BY job_name DESC;

/*73.Write a SQL query to list all the employees except the PRESIDENT and the MANAGER in ascending order of salaries. Return complete information about the employees.*/
SELECT * FROM employee WHERE job_name NOT IN ('PRESIDENT' , 'MANAGER') ORDER BY salary ASC;

/*74. Write a SQL query to find the employees whose annual salary is less than $25,000 per year. Sort the result set in ascending order of the salary. Return complete information about the employees.*/
SELECT * FROM employee WHERE (salary * 12) < 25000 ORDER BY salary ASC;

/*75. Write a SQL query to list the employees who works as a SALESMAN. Sort the result set in ascending order of annual salary. Return employee id, name, annual salary, daily salary of all the employees.*/
SELECT emp_id, emp_name, (salary*12) AS annual_salary, (salary/30) AS daily_salary FROM employee WHERE job_name = 'SALESMAN' ORDER BY annual_salary ASC;

/*76. Write a SQL query to list the employee ID, name, hire date, current date and experience of the employees in ascending order on their experiences.*/
SELECT emp_id, emp_name, hire_date, GETDATE() AS currentt_date, DATEDIFF(YEAR, hire_date, GETDATE()) AS experience FROM employee ORDER BY experience ASC;

/*77. Write a SQL query to list the employees in ascending order of designations of those joined after the second half of 1991.*/
SELECT * FROM employee WHERE hire_date >= '1991-07-01' ORDER BY hire_date ASC;

/*78. Write a SQL query to find the location of all the employees working in the FINANCE or AUDIT department. Sort the result-set in ascending order by department ID. Return complete information about the employees.*/
SELECT e.*, d.dep_location FROM department d INNER JOIN employee e ON d.dep_id = e.dep_id WHERE dep_name IN ('FINANCE', 'AUDIT') ORDER BY dep_id ASC;

/*79. Write a SQL query to find the employees along with grades in ascending order. Return complete information about the employees.*/
SELECT e.*, g.grade FROM employee e INNER JOIN salary_grade g ON e.salary BETWEEN g.min_salary AND g.max_salary ORDER BY grade ASC;

/*80. Write a SQL query to find the employees according to the department in ascending order. Return name, job name, department, salary, and grade.*/
SELECT * FROM employee ORDER BY dep_id ASC;
SELECT e.emp_name, e.job_name, d.dep_name, e.salary, g.grade FROM employee e LEFT JOIN department d ON e.dep_id = d.dep_id LEFT JOIN  salary_grade g ON e.salary BETWEEN g.min_salary AND g.max_salary ORDER BY d.dep_name ASC;
/*81.Write a SQL query to select all employees except CLERK and sort the results in descending order by salary. Return employee name, job name, salary, grade and department name.*/
SELECT * FROM employee WHERE job_name <> 'CLERK' ORDER BY salary DESC;

/*82.Write a SQL query to find those employees who work in the department 1001 or 2001. Return employee ID, name, salary, department, grade, experience, and annual salary.*/
SELECT emp_id, emp_name, salary, d.dep_name, g.grade, DATEDIFF(YEAR, hire_date, GETDATE()) AS experience, (salary*12) AS annual_salary FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id INNER JOIN salary_grade g 
ON e.salary BETWEEN g.min_salary AND g.max_salary WHERE d.dep_id = 1001 OR d.dep_id = 2001;

/*83.Write a SQL query to list the details of the employees along with the details of their departments.*/
SELECT e.*, d.dep_name, d.dep_location FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id;

/*84.Write a SQL query to list the employees who are senior to their MANAGERS. Return complete information about the employees.*/
SELECT e1.* FROM employee e1 INNER JOIN employee e2 ON e1.manager_id = e2.emp_id WHERE e1.hire_date > e2.hire_date;

/*85.Write a SQL query to find those employees who work in the department 1001. Sort the result-set in ascending order by salary. Return employee ID, employee name, salary and department ID.*/
SELECT emp_id, emp_name,salary, dep_id FROM employee WHERE dep_id = 1001 ORDER BY salary ASC;

/*86.Write a SQL query to find the second highest salary. Return second highest salary.*/
SELECT MAX(salary) AS SecondHighestSalary FROM employee WHERE salary < (SELECT MAX(salary) FROM employee);

/*87.Write a SQL query to calculate the average salary and average total remuneration (salary and commission) for each type of job. Return name, average salary and average total remuneration.*/
SELECT DISTINCT job_name, AVG(salary) AS Avg_salary, AVG(salary + commission) AS average_total_remuneration FROM employee GROUP BY job_name;

/*88.Write a SQL query to calculate the total annual salary distributed across each job in 1991. Return job name, total annual salary.*/
SELECT DISTINCT job_name, SUM(salary) AS annual_salary FROM employee WHERE YEAR(hire_date) = 1991 GROUP BY job_name ;

/*89.Write a SQL query to list the employee id, name, department id, location of all the employees.*/
SELECT e.emp_id, e.emp_name, e.dep_id, d.dep_location FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id;

/*90.Write a SQL query to find those employees who work in the department ID 1001 or 2001. Return employee ID, employee name, department ID, department location, and department name.*/
SELECT e.emp_id, e.emp_name, e.dep_id, d.dep_name, d.dep_location FROM employee e INNER JOIN department d ON e.dep_id = d.dep_id WHERE e.dep_id = 1001 OR e.dep_id = 2001;

/*91.Write a SQL query to find those employees whose salary is in the range of minimum and maximum salary. Return employee ID, name, salary and grade.*/
SELECT e.emp_id,e.emp_name, e.salary, sg.grade FROM employee e INNER JOIN salary_grade sg ON e.salary BETWEEN sg.min_salary AND sg.max_salary;

/*92.Write a SQL query to create a list of the managers and the number of employees they supervise. Sort the result set in ascending order on manager. Return manager ID and number of employees under them.*/
SELECT DISTINCT e1.manager_id, e2.emp_name, COUNT(e1.emp_id) AS number_of_employees_under_manager FROM employee e1 INNER JOIN employee e2 ON e1.manager_id = e2.emp_id GROUP BY e1.manager_id,e2.emp_name;

/*93.Write a SQL query to count the number of employees in each designation of a department. Return department id, job name and number of employees.*/
SELECT e.dep_id, e.job_name, COUNT(e.emp_id) AS number_of_employees FROM employee e GROUP BY e.dep_id, e.job_name ORDER BY e.dep_id ASC;

/*94.Write a SQL query to identify the departments in which at least two employees are employed. Return department id, number of employees.*/
SELECT dep_id, COUNT(emp_id) AS number_of_employees FROM employee GROUP BY dep_id HAVING COUNT(emp_id) >= 2 ORDER BY dep_id ASC;

/*95.Write a SQL query to list the grade, number of employees, and maximum salary of each grade.*/
SELECT sg.grade, COUNT(e.emp_id) AS number_of_employees, MAX(e.salary) AS max_salary FROM salary_grade sg INNER JOIN employee e ON e.salary BETWEEN sg.min_salary AND sg.max_salary GROUP BY sg.grade;

/*96.Write a SQL query to identify departments with at least two SALESMEN in each grade. Return department name, grade and number of employees.*/
SELECT d.dep_name, sg.grade, COUNT(e.emp_id) AS number_of_employees FROM salary_grade sg INNER JOIN employee e ON e.salary BETWEEN sg.min_salary AND sg.max_salary
INNER JOIN department d ON d.dep_id = e.dep_id WHERE e.job_name = 'SALESMAN' GROUP BY d.dep_name, sg.grade HAVING COUNT(DISTINCT e.emp_id) >= 2;

/*97.Write a SQL query to identify departments with fewer than four employees. Return department ID, number of employees.*/
SELECT dep_id, COUNT(*) as number_of_employees FROM employee GROUP BY dep_id HAVING COUNT(*) < 4;

/*98.Write a SQL query to find which departments have at least two employees. Return department name, number of employees.*/
SELECT dep_id, COUNT(*) as number_of_employees FROM employee GROUP BY dep_id HAVING COUNT(*) >= 2;

/*99.Write a SQL query to check whether the employees ID are unique or not. Return employee id, number of employees.*/
SELECT emp_id, COUNT(*) AS number_of_employees FROM employee GROUP BY emp_id;

/*100.Write a SQL query to find number of employees and average salary. Group the result set on department id and job name. Return number of employees, average salary, department ID, and job name.*/
SELECT dep_id, job_name, COUNT(emp_id) AS number_of_employees, AVG(salary) AS avg_salary FROM employee GROUP BY dep_id, job_name;

/*101.Write a SQL query to identify those employees whose names begin with 'A' and are six characters long. Return employee name.*/
SELECT emp_name FROM employee WHERE emp_name LIKE 'A_____';

/*102.Write a SQL query to find those employees whose name is six characters in length and the third character must be 'R'. Return complete information about the employees.*/
SELECT * FROM employee WHERE emp_name LIKE '__R___';

/*103.Write a SQL query to find those employees whose name is six characters in length, starting with 'A' and ending with 'N'. Return number of employees.*/
SELECT COUNT(emp_name) AS numberOfEmployee FROM employee WHERE emp_name LIKE 'A____N';

/*104.Write a SQL query to find those employees who joined in the month of where the second letter is 'a'. Return number of employees.*/
SELECT COUNT(emp_name) AS numberOfEmployee FROM employee WHERE MONTH(hire_date) LIKE '_a%';
SELECT COUNT(emp_name) AS numberOfEmployee FROM employee WHERE SUBSTRING(DATENAME(month, hire_date), 2, 1) = 'a';

/*105.Write a SQL query to find those employees whose names contain the character set 'AR' together. Return complete information about the employees.*/
SELECT * FROM employee WHERE emp_name LIKE '%AR%';

/*106.Write a SQL query to find those employees who joined in 90's. Return complete information about the employees.*/
SELECT * FROM employee WHERE YEAR(hire_date) >= 1990 AND YEAR(hire_date) <= 1999;

 /*107.Write a SQL query to find those employees whose ID not start with the digit 68. Return employee ID, employee ID using trim function.*/
 SELECT emp_id FROM employee WHERE emp_id NOT LIKE '68%';

/*108.Write a SQL query to find those employees whose names contain the letter 'A’. Return complete information about the employees.*/
SELECT * FROM employee WHERE emp_name LIKE '%A%';

/*109.Write a SQL query to find those employees whose name ends with 'S' and six characters long. Return complete information about the employees.*/
SELECT * FROM employee WHERE emp_name LIKE '_____S';

/*110.Write a SQL query to find those employees who joined in any month, but the month name contain the character ‘A’. Return complete information about the employees.*/
SELECT * FROM employee WHERE MONTH(hire_date) LIKE '%a%';

SELECT * FROM employee WHERE CHARINDEX('a', UPPER(DATENAME(month, hire_date))) > 0;

/*111.Write a SQL query to find those employees who joined in any month, but the name of the month contain the character ‘A’ in second position. */
SELECT * FROM employee WHERE MONTH(hire_date) LIKE '_a%';

SELECT * FROM employee WHERE SUBSTRING(DATENAME(month, hire_date), 2, 1) = 'a';

/*  Return complete information about the employees */
SELECT * FROM employee;

SELECT * FROM employee e left join department d on e.dep_id = d.dep_id left join salary_grade s on e.salary between s.min_salary and s.max_salary;

SELECT * FROM department d left join employee e on d.dep_id = e.dep_id left join salary_grade s on e.salary between s.min_salary and s.max_salary;

SELECT * FROM salary_grade s left join employee e on e.salary between s.min_salary and s.max_salary left join department d on e.dep_id = d.dep_id ;
/* CREATE VIEW **********************************************************/
CREATE VIEW DETAILS AS SELECT e.emp_name, g.grade FROM employee e, salary_grade g WHERE e.salary BETWEEN g.min_salary AND g.max_salary;
SELECT * FROM DETAILS;