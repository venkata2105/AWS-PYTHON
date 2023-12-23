CREATE TABLE employee2 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO employee2 (emp_id, emp_name, department, salary) VALUES
    (1, 'John Doe', 'IT', 60000.00),
    (2, 'Jane Smith', 'HR', 50000.00),
    (3, 'Bob Johnson', 'Finance', 75000.00),
    (4, 'Alice Williams', 'Marketing', 62000.00),
    (5, 'Charlie Brown', 'IT', 58000.00),
    (6, 'Eva Davis', 'Finance', 70000.00),
    (7, 'Frank Miller', 'HR', 52000.00),
    (8, 'Grace Taylor', 'Marketing', 65000.00),
    (9, 'David Clark', 'IT', 63000.00),
    (10, 'Helen Turner', 'Finance', 71000.00);
    INSERT INTO employee2 (emp_id, emp_name, department, salary) VALUES(11, NULL, 'IT', 60000.00),(12, NULL, 'HR', 60000.00)
  select * from employee2 where salary > (select avg(salary) from employee2);
    
    select * from employee2 where (department,salary) in (select department,max(salary) from employee2 group by department);
    /*departments who donot have employess*/
    select * from employee2 where (select emp_name where emp = null);
    delete from employee2 where emp_name = null;
    
    CREATE TABLE Department (
    dep_id INT PRIMARY KEY,
    department_name VARCHAR(50) UNIQUE
);
select * from employee2;
INSERT INTO Department (dep_id, department_name) VALUES;
select * from Department where department_name not in (select department from employee2);
/* correlated sub quries*/
/* find the employees in each depatrment who earn more than avg salary*/
select avg(salary) from employee2;
select * from employee2 as e1 where salary > (select avg(salary) from employee2 as e2 where e2.department = e1.department)



    