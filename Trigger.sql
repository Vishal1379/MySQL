create database ineuron
use ineuron

create table course1(
course_id varchar(60),
course_desc varchar (60),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date)

select * from course1

create table course_update (
course_mentor_update varchar(60),
course_price_update int,
course_discount_update int )


delimiter //
create trigger course_before_insert
before insert 
on course1 for each row
begin
     set new.create_date = sysdate();
     end; //
	
    
insert into course1 (course_id,course_desc,course_mentor,course_price,course_discount)value(101,"FSDA","vishal",4000,10)

select * from course1
     
create table course90(
course_id int , 
course_desc varchar(50),
course_mentor varchar(60),
course_price int ,
course_discount int,
create_date date,
user_info varchar(50))

delimiter //
create trigger course_before_insert902
before insert 
on course90 for each row
begin
	declare user_val varchar(50);
	set new.create_date = sysdate();
    select user() into  user_val;
    set new.user_info = user_val;
    insert into ref_course values(sysdate(),user_val);
end; //

select * from course90

insert into course90(course_id,course_desc,course_mentor,course_price,course_discount) values (1,"fsda","vishal",3700,100)

create table ref_course (
record_insert_date date ,
record_insert_user varchar(50)
)

select * from ref_course


create table test1 (
c1 varchar(50),
c2 date,
c3 int)

create table test2(
c1 varchar(50),
c2 date,
c3 int)

create table test3(
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_update_others
before insert on test1 for each row 
begin
	insert into  test2 values("xyz",sysdate(),23354);
	insert into  test3 values("xyz",sysdate(),23354);
end; //

insert into test1 values ("shubha",sysdate(),2358)


select * from test1
select * from test2
select * from test3


delimiter //
create trigger to_update_others_table
before insert on test1 for each row 
begin
	update test2 set c1 = 'abc' where c1 = 'xyz';
	delete from test3 where c1 = 'xyz';
end; //

insert into test1 values ("shubha",sysdate(),2358)

SET SQL_SAFE_UPDATES = 0;

delimiter //
create trigger to_delete_others_table
after delete on test1 for each row 
begin
	insert into test3 values("after delete", sysdate(), 435435);
end; //

select * from test1

delete from test1 where c1 = "shubha"

delimiter //
create trigger to_delete_others_before
before delete on test1 for each row 
begin
	insert into test3 values("after delete", sysdate(), 435435);
end; //

delimiter //
create trigger to_delete_others_before_observation1
before delete on test1 for each row 
begin
	insert into test2 values(old.c1,old.c2,old.c3);
end; //

select * from test1
select * from test2
select * from test3


create table test11 (
c1 varchar(50),
c2 date,
c3 int)

create table test12(
c1 varchar(50),
c2 date,
c3 int)

create table test13(
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_delete_others_before_observation13
before delete on test11 for each row 
begin
	insert into test12 (c1,c2,c3)values(old.c1,old.c2,old.c3);
end; //

insert into test11 values ("vishal",sysdate(),123456);

delete from test11 where c1="Thorat"
insert into test11 values("Thorat",sysdate(),1234)

select * from test12

delimiter //
create trigger to_delete_others_before_observation14
after delete on test11 for each row 
begin
	insert into test12 (c1,c2,c3)values(old.c1,old.c2,old.c3);
end; //

delimiter //
create trigger to_update_others1
after update on test11 for each row 
begin
	insert into test12 (c1,c2,c3)values(old.c1,old.c2,old.c3);
end; //

select * from test11;
insert into test11 values("vishal",sysdate(),2358115)

update test11 set c1="krish" where c1="vishalthorat"

delimiter //
create trigger to_update_others_before
before update on test11 for each row 
begin
	insert into test12 (c1,c2,c3)values(new.c1,new.c2,new.c3);
end; //

select * from test11
select * from test12

update test11 set c1="shubha" where c1="vishalt"




