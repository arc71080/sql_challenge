--List the employee number, last name, first name, sex, and salary of each employee
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
from employees
join salaries as salary
on employees.emp_no = salary.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986 
select first_name, last_name, hire_date
from employees
where hire_date like '%1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name
select dept_manager.dept_no, department.dept_name, employees.emp_no, employees.last_name, employees.first_name
from employees
join dept_manager
on employees.emp_no = dept_manager.emp_no
join departments as department 
on dept_manager.dept_no = department.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
	and  last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name
select department.dept_name, employees.emp_no, employees.last_name, employees.first_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments as department 
on dept_emp.dept_no = department.dept_no
where dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select department.dept_name, employees.emp_no, employees.last_name, employees.first_name
from employees
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments as department 
on dept_emp.dept_no = department.dept_no
where dept_name = 'Sales'
	or dept_name = 'Development';
	
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
select last_name, count(last_name) as "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;
