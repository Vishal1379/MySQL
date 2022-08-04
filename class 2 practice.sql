use ineuron_fsda;

select * from bank_details;

DELIMITER &&
create procedure sudh()
begin 
select * from bank_details;
END &&

call sudh()

DELIMITER $$
create procedure bal_max()
begin 
select * from bank_details where balance in (select max(balance) from bank_details);
END $$

call bal_max();

DELIMITER $$
create procedure avg_bal_jobrole1(in sudh varchar(30))
begin 
select avg(balance) from bank_details where job =sudh;
END$$

call avg_bal_jobrole1('admin.');

call avg_bal_jobrole1('retired');

call avg_bal_jobrole1('unkown');

DELIMITER $$
create procedure sel_edu_job1(in v1 varchar(30), in v2 varchar(30) )
begin
select * from bank_details where education = v1 and job = v2 ;
END $$

call sel_edu_job1 ('tertiary','retired');

call sel_edu_job1 ('primary', 'admin.');

create view bank_view as select age, job, marital, balance, education from bank_details;

select job, avg(balance) from bank_view where job ='admin.';