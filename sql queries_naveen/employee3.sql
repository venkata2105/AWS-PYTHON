create table emp1(id int primary key,first_name varchar(25),last_name varchar(25),location varchar(20));
insert into emp1 (id,first_name,last_name,location) values (1,"rantnam","venkata","nellore");
insert into emp1 (id,first_name,last_name,location) values (2,"rant","venk","nellore");
insert into emp1 values (3,"rant","venk","nellore");
desc emp1;
select * from emp1;
alter table emp1 drop primary key;
desc emp1;
alter table emp1 add primary key(id);
alter table emp1 add primary key(location);
desc emp1;
employee1employee2