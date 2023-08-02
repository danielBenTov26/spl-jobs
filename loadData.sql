-- create the tables
create table Employees (
   ename varchar(20) primary key,
   street varchar(20),
   city varchar(20)
);

create table Companies (
   cname varchar(20) primary key,
   city varchar(20)
);

create table Works (
   ename varchar(20),
   cname varchar(20),
   salary number(6,2),
   primary key(ename, cname),
   foreign key(ename) references Employees,
   foreign key(cname) references Companies
);

create table Manages (
   mname varchar(20),
   ename varchar(20) unique,
   primary key(mname, ename),
   foreign key(mname) references Employees,
   foreign key(ename) references Employees
);

-- insert data ------------------
-- insert into employees
insert into Employees values('david', 'herzl', 'jerusalem');
insert into Employees values('yossi', 'kg george', 'jerusalem');
insert into Employees values('shimon', 'arlozorov', 'tel aviv');
insert into Employees values('dafna', 'arlozorov', 'tel aviv');
insert into Employees values('anat', 'kaplan', 'ramat gan');
insert into Employees values('moshe', 'ben gurion', 'ramat gan');
insert into Employees values('sara', 'gordon', 'beer sheva');
insert into Employees values('yoni', 'weizman', 'ramat gan');
insert into Employees values('amir', 'arlozorov', 'tel aviv');
insert into Employees values('shoshana', 'kaplan', 'ramat gan');

-- insert into Companies
insert into Companies values('bank israel', 'jerusalem');
insert into Companies values('teva', 'jerusalem');
insert into Companies values('amdocs', 'tel aviv');
insert into Companies values('comverse', 'herzelya');
insert into Companies values('rad', 'ramat gan');
insert into Companies values('superfarm', 'ramat gan');

-- insert into works
insert into Works values('david', 'bank israel', 5000);
insert into Works values('yossi', 'bank israel', 15000);
insert into Works values('shimon', 'teva', 6000);
insert into Works values('dafna', 'bank israel', 11000);
insert into Works values('anat', 'amdocs', 7000);
insert into Works values('moshe', 'comverse', 10000);
insert into Works values('sara', 'rad', 15000);
insert into Works values('yoni', 'rad', 12000);
insert into Works values('amir', 'teva', 10000);
insert into Works values('shoshana', 'amdocs', 4000);

-- insert into manages
insert into Manages values('yossi', 'david');
insert into Manages values('yossi', 'dafna');
insert into Manages values('amir', 'shimon');
insert into Manages values('sara', 'yoni');
insert into Manages values('anat', 'shoshana');