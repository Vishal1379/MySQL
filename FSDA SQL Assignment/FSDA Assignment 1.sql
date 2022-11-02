create database tasks;
use tasks;

---------------------------------------------------------Task 1------------------------------------------------------------------------------
create table if not exists shopping_history(
product varchar(30),
quantity int,
unit_price int
);

select * from shopping_history

insert into  shopping_history values
('milk',2,10),
('bread',5,15),
('bread',10,15),
('milk',1,10),
('sugar',3,20),
('salt',2,5),
('sugar',2,20),
('milk',4,10),
('bread',2,15),
('salt',1,5),
('sugar',1,20);

alter table shopping_history
add column Total_price int after unit_price;

set sql_safe_updates = 0

update shopping_history
set Total_price = quantity*unit_price;

select product, sum(Total_price)as Total_price from shopping_history group by product order by product;

------------------------------------------------------------Task 2-----------------------------------------------------------------------------

create table if not exists phones(
`name` varchar(30),
phone_number int not null unique
);

create table if not exists calls (
id int not null ,
caller int not null,
callee int not null,
duration int not null
);

select * from phones;
select * from calls;

insert into phones values
('vishal',100),
('dharma',101),
('rakesh',102),
('yash',103);

insert into calls values
(1,100,101,5),
(2,100,102,2),
(3,103,100,4),
(4,102,103,8);

select  `name`from phones p
left outer join calls c on p.phone_number = c.caller  or  p.phone_number = c.callee  
group by `name` 
having sum(duration)>=10  
order by `name`;

--------------------------------------------------------Task 3----------------------------------------------------------------------------------

create table if not exists transactions(
amount int not null,
`Date` date not null
);

insert into transactions values
(6000, '2022-04-03')

insert into transactions values
(5000,'2022-04-02'),
(4000,'2022-04-01'),
(3000,'2022-03-01'),
(2000,'2022-02-01'),
(1000,'2022-01-01')

select * from transactions

select sum(amount)-12*5 as balance from transactions

==========================================================================================================================================
