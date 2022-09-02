SELECT * FROM ineuron_partition.ineuron_courses1;

use ineuron_partition

select * ,
case 
    when course_name = 'fsda'then "this is my batch"
    when course_name = 'fsds' then "this is my batch"
    else "this is not your batch"
end as statement 
from ineuron_courses1

select * ,
case 
    when length(course_name) = 4 then "len 4 "
    when length(course_name) = 2 then "len 2"
    else "other length"
end as statement 
from ineuron_courses1

select * ,
case 
    when course_name = 'fsda'then sysdate()
    when course_name = 'fsds' then system_user()
    else "this is not your batch"
end as statement 
from ineuron_courses1

update ineuron_courses1 set course_name = case 	
when course_name ="RL" then "reinforcement learning"
when course_name = "Dl" then "deep learning"
end 

select * from ineuron_courses1