SELECT * FROM sunday.person;

create table cte1 as (
select id,email,row_number() over(partition by email order by id ) as rowss
from person
);


select * from cte2;

create table cte2 like cte1;

select * from person;

select id,email
from person p
where id = (select min(id) 
           from person
where email = p.email);

delete p1 
from person p1
join person p2
On p1.email = p2.email
where p1.id > p2.id;

select * from person;

delete  from person
where id not in (
select min(id)
from 
person 
group by email
) ;



set sql_safe_updates = 0