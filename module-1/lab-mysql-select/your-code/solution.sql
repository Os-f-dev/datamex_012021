USE lab_mysql;

-- Challenge 1 - Who Have Published What At Where?
SELECT a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME", t.title as "TITLE", p.pub_name as "PUBLISHER",
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
INNER JOIN authors as a  ON ta.au_id=a.au_id
INNER JOIN publishers as p  ON t.pub_id=p.pub_id
ORDER BY a.au_id DESC;

-- Comprobacion de la respuesta
SELECT count( *)
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
INNER JOIN authors as a  ON ta.au_id=a.au_id
INNER JOIN publishers as p  ON t.pub_id=p.pub_id;

SELECT COUNT(*) FROM titleauthor;

-- Challenge 2 - Who Have Published How Many At Where?

SELECT a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME", t.title as "TITLE", p.pub_name as "PUBLISHER",
count(t.title) as "TITLE COUNT"
FROM titles as t
INNER JOIN publishers as p  ON t.pub_id=p.pub_id
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
INNER JOIN authors as a  ON ta.au_id=a.au_id
GROUP BY a.au_id, p.pub_name
ORDER BY a.au_id DESC;

-- Challenge 3 - Best Selling Authors

SELECT a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME", sum(t.ytd_sales) as "TOTAL"
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
INNER JOIN authors as a  ON ta.au_id=a.au_id
GROUP BY a.au_id
ORDER BY sum(t.ytd_sales) DESC
LIMIT 3;

-- Challenge 4 - Best Selling Authors Ranking

SELECT  a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME",  IF(t.ytd_sales>0, sum(t.ytd_sales), 0) as "TOTAL" 
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
RIGHT JOIN authors as a  ON ta.au_id=a.au_id
GROUP BY a.au_id
ORDER BY sum(t.ytd_sales) DESC;