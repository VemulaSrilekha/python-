
--Activity 1

create database Assignment1

--Activity 2

create table STUDENT(
StdID int identity (1001,1),
StdName varchar (30) not null,
Sex varchar (10),
Percentage_ int,
Sclass int,
Sec varchar(30),
Stream_ varchar (30),
DOB date)

--Activity 3

insert into STUDENT values ('AKSHAY', 'MALE', 70,11,'A','BA', '10/11/1996'), ('SUPRAJA', 'FEMALE',80,12, 'B', 'Science','09/11/1995'),
('SUPRIYA','FEMALE',90,11,'C','BA','12/12/1996'),('RAJA', 'MALE',60,12, 'B', 'Science', '09/12/1999'),
('RAJANI', 'FEMALE',60,11, 'B','BA ','01/11/1996'),('ROSHITHA', 'FEMALE',90,11, 'C', 'Science', '02/10/1996'),
('HEMANTH', 'MALE',80,12, 'A','BA', '07/10/1995'),('SAI', 'MALE',85,12, 'C',  'Science','08/11/1998'),
('AMRUTHA', 'FEMALE',70,11, 'A','BA', '02/11/1996'),('LEKHA', 'FEMALE',90,12, 'B', 'Science', '01/10/1994')

--Activity-4

--To display all the records form STUDENT table.

select * from STUDENT

--To display one name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student

select Stdname,DOB from STUDENT
where StdName='SAI'

--To display all students record where percentage is greater of equal to 80 FROM student table

select * from STUDENT
where Percentage_ >=80

--To display student name, stream and percentage where percentage of student is more than 80

select StdName, Stream_, Percentage_ from STUDENT
where Percentage_ >80

--To display all records of science students whose percentage is more than 75 form student table

select * from STUDENT 
where Percentage_ >75 and Stream_ = 'Science'

-- Activity 5

--add a column (FIELD)in the STUDENT table,for example TeacherID as VARCHAR(20)

alter table STUDENT 
add TeacherID varchar (20)

select * from STUDENT

--modify the TeacherID data type form character to integer

alter table STUDENT
alter column TeacherID int

--Drop (Delete) a field form a table. For e.g you want to delete TeacherID field

alter table STUDENT
drop column TeacherID

select * from STUDENT

--Activity 6

--To subtract 5 form all students percentage and display name and percentage. 

update STUDENT set Percentage_= Percentage_-5
select StdName, Percentage_ from STUDENT

--Using column alise for example we wantto display StdName as Student Name and DOB as
--Date of Birth then the statement will be

sp_rename 'STUDENT.StdName','student_name','column'

select * from STUDENT

--Display the name of all students whose stream is not Science

select * from STUDENT where Stream_ != 'Science' 

--Display all name and percentage where percentage is between 60 and 80

select * from STUDENT where Percentage_ between 60 and 80

--Activity 7

--EX: To change a student name from Suresh to Mahesh Whose StdID is 1014 and also change percentage 86.

select * from STUDENT

update STUDENT set student_name='NEHA', Percentage_=90
where StdID=1005

select * from STUDENT

--To delete the records form student table where StdId is 1016.

delete from STUDENT where StdID=1010

select * from STUDENT

--Display all the streams in student table

select Stream_ from STUDENT group by Stream_

--Note the output of the following statement. SELECT StdName, Sex, Stream FROM Student WHERE percentage BETWEEN 70 AND 80

select * from STUDENT

select student_name, Sex, Stream_ from STUDENT where Percentage_ between 70 and 80

