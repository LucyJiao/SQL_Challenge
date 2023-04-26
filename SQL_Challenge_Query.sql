--List the employee number, last name, first name, sex, and salary of each employee
SELECT
emp.emp_no as EmployeeNumber,
emp.last_name as LastName,
emp.first_name as FirstName,
emp.sex as Sex,
s.salary as Salary
FROM employees as emp
JOIN salaries as s
ON emp.emp_no = s.emp_no;



--List the first name, last name, and hire date for the employees who were hired in 1986 
SELECT
emp.first_name as FirstName,
emp.last_name as LastName,
emp.hire_date as HireDate

FROM employees as emp
WHERE RIGHT(emp.hire_date,4)='1986';



--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT 
emp.first_name as FirstName,
emp.last_name as LastName,
emp.emp_no as EmployeeNumber,
dept.dept_name as DepartmentName,
dept.dept_no as DepartmentNumber

FROM employees as emp
JOIN dept_emp ON dept_emp.emp_no = emp.emp_no
JOIN departments as dept 
ON dept.dept_no = dept_emp.dept_no;



--List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT 
emp.first_name as FirstName,
emp.last_name as LastName,
emp.emp_no as EmployeeNumber,
dept.dept_name as DepartmentName,
dept.dept_no as DepartmentNumber


FROM employees as emp
JOIN dept_emp ON dept_emp.emp_no = emp.emp_no
JOIN departments as dept 
ON dept.dept_no = dept_emp.dept_no;



--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
SELECT
emp.first_name as FirstName,
emp.last_name as LastName,
emp.sex as Gender

FROM employees as emp
WHERE emp.first_name = 'Hercules'
AND LEFT(last_name,1) = 'B';



--List each employee in the Sales department, including their employee number, last name, and first name
SELECT
emp.first_name as FirstName,
emp.last_name as LastName,
emp.emp_no as EmployeeNumber


FROM departments as dept
JOIN dept_emp
ON dept.dept_no = dept_emp.dept_no
JOIN employees as emp
ON dept_emp.emp_no = emp.emp_no
WHERE dept.dept_name = 'Sales';



--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT
emp.first_name as FirstName,
emp.last_name as LastName,
emp.emp_no as EmployeeNumber,
dept.dept_name as DepartmentName

FROM departments as dept
JOIN dept_emp
ON dept.dept_no = dept_emp.dept_no
JOIN employees as emp
ON dept_emp.emp_no = emp.emp_no
WHERE dept.dept_name IN ('Sales', 'Development')



--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
SELECT 
last_name as LastName,
COUNT (last_name)

FROM employees 
GROUP BY last_name 
ORDER BY last_name DESC