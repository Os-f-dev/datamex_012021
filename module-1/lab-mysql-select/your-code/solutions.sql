/*use pub2; 

select pubs.pub_name, count(titles.title_id) as Titles
from pub2.publishers as pubs
inner join pub2.titles as titles
on pubs.pub_id = titles.pub_id
group by pubs.pub_name;

select pub.pub_name, count(titles.title_id) as Title
from pub2.publishers as pub
left join pub2.titles titles
on pub.pub_id = titles.pub_id
group by pub.pub_name;

select titles.title, titles.type, titles.price, sum(sales.qty) as unit_sold
FROM pub2.sales as sales
right join pub2.titles as titles
on sales.title_id = titles.title_id
group by titles.title, titles.type,titles.price;

select *
from pub2.employee as emp
right join pub2.jobs as job
on emp.job_id = job.job_id
union
select *
from pub2.employee as emp
left join pub2.jobs as job
on emp.job_id = job.job_id;
*/


# Challenge 1
SELECT	au_id, au_lname, au_fname FROM authors;
SELECT title FROM titles;
SELECT pub_name FROM publishers

# Challenge 2


# Challenge 3


# Challenge 4


