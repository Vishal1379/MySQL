SHOW DATABASES;
create database dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30))

select * from dress;

load data infile
'D:/AttributeDataset.csv'
into table dress
fields terminated by ','
enclosed by '"'
lines terminated by'\n'
ignore 1 rows;

create table test(
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar (30),
test_adress varchar(30),
primary key(test_id))

select * from test;

insert into test values 
(1,'sudhanshu','sudhanshu@ineuron.ai','benglaore' ),
(2,'krish','krish@gmail.com', 'bengalore' ),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore' ),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur')


create table if not exists test3 ( 
test_id int ,
test_name varchar(30) , 
test_mailid varchar(30),
teast_adress varchar(30),
test_salary int check(test_salary > 10000))

insert into test3 values 
(1,'sudhanshu','sudhanshu@ineuron.ai','benglaore' , 50000),
(2,'krish','krish@gmail.com', 'bengalore' , 30000),
(3,'hitesh' ,'hitesh@ineuron.ai','bengalore' , 111000),
(4,'shubahm' , 'shudham@gmail.com', 'jaipur',20000)

select * from test3;

create table if not exists test5( 
test_id int NOT NULL auto_increment  ,
test_name varchar(30)  NOT NULL default 'unknown' , 
test_mailid varchar(30) unique NOT NULL,
test_adress varchar(30) check (test_adress= 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

insert into test6 (test_name,test_mailid,test_adress,test_salary) values 
('sudhanshu','sudhanshu@ineuron.ai','bengalore' , 50000),
('krish','krish@gmail.com', 'bengalore' , 30000),
('hitesh' ,'hitesh@ineuron.ai','bengalore' , 111000),
('shubahm' , 'shudham@gmail.com', 'bengalore',20000)

select * from test6;

create table if not exists test6( 
test_id int  auto_increment  ,
test_name varchar(30)  NOT NULL default 'unknown' , 
test_mailid varchar(30) unique NOT NULL,
test_adress varchar(30) check (test_adress= 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

create table if not exists test7( 
test_id int NOT NULL auto_increment  ,
test_name varchar(30)  NOT NULL default 'unknown' , 
test_mailid varchar(30) unique NOT NULL,
teast_adress varchar(30) check (teast_adress= 'bengalore') NOT NULL,
test_salary int check(test_salary > 10000) NOT NULL,
primary key (test_id))

insert into test7 
( test_id , test_name , test_mailid , teast_adress,test_salary) 
values 
(101 , 'sudhanshu','sudhanshu55@ineuron.ai','bengalore' , 50000)

select * from test7;

insert into test7 values
(7,'vishal','vishalthorat@gmail.com','bengalore',70000)