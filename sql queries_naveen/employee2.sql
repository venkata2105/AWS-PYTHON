create table employee2 (firstname varchar(25),middlename varchar(25),age int,salary int,location varchar(25));
insert into employee2 (firstname,middlename,age,salary,location) values ("rohit","sharma",36,300000,"mumbai");
select * from employee2;
insert into employee2 (firstname,middlename,age,salary,location) values ("starc","mitch",34,300000,"aussie");
insert into employee2 (firstname,middlename,age,salary,location) values ("miller","killer",34,300000,"RAS");
desc employee2;
alter table employee2 add column profession varchar(25);
