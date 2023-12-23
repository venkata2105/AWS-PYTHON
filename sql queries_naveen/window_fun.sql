CREATE TABLE employee_data (
    Name VARCHAR(255),
    Age INT,
    Department VARCHAR(255),
    Salary DECIMAL(10, 2)
);

INSERT INTO employee_data (Name, Age, Department, Salary) VALUES
    ('Ramesh', 20, 'Finance', 50000.00),
    ('Deep', 25, 'Sales', 30000.00),
    ('Suresh', 22, 'Finance', 50000.00),
    ('Ram', 28, 'Finance', 20000.00),
    ('Pradeep', 22, 'Sales', 20000.00);
select * from employee_data;
/*Find average salary of employees for each department and order employees within a department by age.*/
select *,avg(Salary) over (partition by department) as avg_salary from employee_data;

select name,age,e1.department,x.avg_salary from employee_data e1 join (select department,avg(Salary) as avg_salary from employee_data group by department) as x on
e1.Department = x.Department;


CREATE TABLE employee_table (
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Salary DECIMAL(10, 2),
    Location VARCHAR(255)
);

INSERT INTO employee_table (FirstName, LastName, Salary, Location) VALUES
    ('John', 'Doe', 60000.00, 'New York'),
    ('Jane', 'Smith', 55000.00, 'Los Angeles'),
    ('Michael', 'Johnson', 70000.00, 'Chicago'),
    ('Emily', 'Williams', 48000.00, 'San Francisco'),
    ('David', 'Brown', 65000.00, 'Seattle'),
    ('Sarah', 'Miller', 60000.00, 'Boston'),
    ('Robert', 'Jones', 58000.00, 'Denver'),
    ('Jessica', 'Davis', 62000.00, 'Atlanta'),
    ('Christopher', 'Taylor', 54000.00, 'Houston'),
    ('Amanda', 'Anderson', 63000.00, 'Miami');
	INSERT INTO employee_table (FirstName, LastName, Salary, Location) VALUES
    ('John', 'Doe', 60000.00, 'New York'),
    ('Jane', 'Smith', 55000.00, 'Los Angeles'),
    ('Michael', 'Johnson', 70000.00, 'Chicago'),
    ('Emily', 'Williams', 48000.00, 'San Francisco'),
    ('David', 'Brown', 65000.00, 'Seattle'),
    ('Sarah', 'Miller', 60000.00, 'Boston'),
    ('Robert', 'Jones', 58000.00, 'Denver'),
    ('Jessica', 'Davis', 62000.00, 'Atlanta'),
    ('Christopher', 'Taylor', 54000.00, 'Houston'),
    ('Amanda', 'Anderson', 63000.00, 'Miami'),
    ('Brian', 'Wilson', 56000.00, 'Chicago'),  -- Duplicate location
    ('Linda', 'White', 59000.00, 'Boston');    -- Duplicate location
	
select * from employee_table;
select FirstName,LastName,avg(Salary) over(partition by Location) as sal_avg,count(*) over(partition by location)as loc_count from employee_table;

/*window functions*/
/*rank,dense rank,row number,NTILE
LAG and LEAD*/
/*Calculate row no., rank, dense rank of employees is employee table according to salary within each department.*/
select firstname,lastname,salary,location,ROW_NUMBER() over (partition by location order by salary desc) from employee_table;
select firstname,lastname,salary,Rank() over(partition by location order by salary) from employee_table;

select firstname,lastname,salary,Dense_Rank() over(partition by location order by salary) from employee_table;















