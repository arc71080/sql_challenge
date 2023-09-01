--Create table and view columns for titles
create table titles (
	title_id varchar (5) not null primary key,
	title varchar (20) not null
);

--View the table
select * from titles;

--Create table and view columns for employees
create table employees (
	emp_no integer not null primary key,
	emp_title_id varchar(5) not null, 
	birth_date varchar(10) not null,
	first_name varchar not null, 
	last_name varchar not null, 
	sex varchar(1) not null,
	hire_date varchar(10) not null,
	foreign key (emp_title_id) references titles(title_id)
);

--View the table
select * from employees;

--Create table and view columns for departments
create table departments (
	dept_no varchar(4) not null primary key,
	dept_name varchar(25) not null
);

--View the table
select * from departments;

--Create table and view columns for dept_emp
create table dept_emp (
	emp_no integer not null,
	dept_no varchar(4) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

--View the table
select * from dept_emp;

--Create table and view columns for dept_manager
create table dept_manager (
	dept_no varchar(4) not null,
	emp_no integer not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

--View the table
select * from dept_manager;

--Create table and view columns for salaries
create table salaries (
	emp_no integer not null,
	salary integer not null,
	foreign key (emp_no) references employees(emp_no)
);

--View the table
select * from salaries; 
