/*use pubs2;


select a.au_id, a.au_lname, a.au_fname, t.title, p.pub_name FROM authors as a 
inner join titleauthor as ta
ON a.au_id = ta.au_id
inner join titles as t 
on  ta.title_id = t.title_id
inner join publishers as p
on  t.pub_id = p.pub_id;


select a.au_id, a.au_lname, a.au_fname,  p.pub_name, COUNT(title) FROM authors as a
inner join titleauthor as ta
ON a.au_id = ta.au_id
inner join titles as t
on ta.title_id = t.title_id
inner join publishers as p
on  t.pub_id = p.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname,  p.pub_name
ORDER by a.au_id DESC, p.pub_name DESC ;
