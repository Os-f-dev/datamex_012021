use pubs1;
select count(*) from titleauthor ;

select a.au_id, a.au_lname, a.au_fname, c.title, d.pub_name from authors a
left join titleauthor b on (a.au_id = b.au_id)
left join titles c on (c.title_id = b.title_id)
left join publishers d on (d.pub_id = c.pub_id) 
where c.title is not null;

select a.au_id, a.au_lname, a.au_fname, d.pub_name, count(c.title) as cant from authors a
left join titleauthor b on (a.au_id = b.au_id)
left join titles c on (c.title_id = b.title_id)
left join publishers d on (d.pub_id = c.pub_id) 
where c.title is not null
group by a.au_id;

select c.au_id, c.au_lname, au_fname, sum(a.qty) as qty_total 
from authors as c
inner join titleauthor as b
on c.au_id = b.au_id
inner join sales as a
on a.title_id = b.title_id
group by c.au_id
order by qty_total desc
limit 3;

select c.au_id, c.au_lname, au_fname, sum(a.qty) as qty_total 
from authors as c
inner join titleauthor as b
on c.au_id = b.au_id
inner join sales as a
on a.title_id = b.title_id
group by c.au_id
order by qty_total desc
limit 23;
