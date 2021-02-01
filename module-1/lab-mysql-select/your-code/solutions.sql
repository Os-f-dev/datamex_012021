use pub2;

/*Challenge 1 */
SELECT COUNT(*) FROM titleauthor;

SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', t.title AS 'TITLE', p.pub_name AS 'PUBLISHER'
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
ORDER BY a.au_id;

/* Comprobar de la suma/
SELECT COUNT() FROM
(SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', t.title AS 'TITLE', p.pub_name AS 'PUBLISHER'
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
ORDER BY a.au_id) AS C;*/

/*Challenge 2*/
SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', p.pub_name AS 'PUBLISHER', COUNT(title) AS 'TITLE_COUNT'
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name
ORDER BY a.au_id DESC, p.pub_name DESC;

/*Comprobar de la suma/
SELECT SUM(TITLE_COUNT)
FROM
(SELECT a.au_id AS 'AUTHOR ID', a.au_lname AS 'LAST NAME', a.au_fname AS 'FIRST NAME', p.pub_name AS 'PUBLISHER', COUNT(title) AS 'TITLE_COUNT'
FROM authors AS a
INNER JOIN titleauthor AS ta ON a.au_id = ta.au_id
INNER JOIN titles AS t ON ta.title_id = t.title_id
INNER JOIN publishers AS p ON t.pub_id = p.pub_id
GROUP BY a.au_id, a.au_lname, a.au_fname, p.pub_name
ORDER BY a.au_id DESC, p.pub_name DESC) AS COMP;*/

/*Challenge 3*/
select c.au_id, c.au_lname, au_fname, sum(a.qty) as qty_total 
from authors as c
inner join titleauthor as b
on c.au_id = b.au_id
inner join sales as a
on a.title_id = b.title_id
group by c.au_id
order by qty_total desc
limit 3;


/*Challenge 4*/
select c.au_id, c.au_lname, au_fname, sum(a.qty) as qty_total 
from authors as c
inner join titleauthor as b
on c.au_id = b.au_id
inner join sales as a
on a.title_id = b.title_id
group by c.au_id
order by qty_total desc
limit 23;