-- CHALLENGE 1

-- step 1
CREATE TEMPORARY TABLE royalties
SELECT  t.title_id as "TITLE ID" , a.au_id as "AUTHOR ID" ,
t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "ROYALTY" 
FROM titles as t
INNER JOIN sales as s  ON t.title_id=s.title_id
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
RIGHT JOIN authors as a  ON ta.au_id=a.au_id;
-- step 2
CREATE TEMPORARY TABLE royalties_each_authors
SELECT `TITLE ID` , `AUTHOR ID`, SUM(`ROYALTY`)
FROM royalties
GROUP BY `TITLE ID` , `AUTHOR ID` 
ORDER BY SUM(`ROYALTY`) DESC;
-- step 3
SELECT  a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME",  r.ROYALTY + t.advance as "PROFIT" 
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
RIGHT JOIN authors as a  ON ta.au_id=a.au_id
INNER JOIN royalties_each_authors as r  ON a.au_id=r.`AUTHOR ID`
GROUP BY a.au_id
ORDER BY r.ROYALTY + t.advance DESC
LIMIT 3;

-- CHALLENGE 2

SELECT  a.au_id as "AUTHOR ID" , 
a.au_lname as "LAST NAME" , a.au_fname as "FIRST NAME",  r.ROYALTYS + t.advance as "PROFIT" 
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
RIGHT JOIN authors as a  ON ta.au_id=a.au_id
INNER JOIN (SELECT `TITLE ID` , `AUTHOR ID`, SUM(ra.`ROYALTY`) as ROYALTYS
            FROM (SELECT  t.title_id as "TITLE ID" , a.au_id as "AUTHOR ID" ,
                    t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "ROYALTY" 
                    FROM titles as t
                    INNER JOIN sales as s  ON t.title_id=s.title_id
                    INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
                    RIGHT JOIN authors as a  ON ta.au_id=a.au_id) as ra
			GROUP BY `TITLE ID` , `AUTHOR ID`) as r  
ON a.au_id=r.`AUTHOR ID`
GROUP BY a.au_id
ORDER BY r.ROYALTYS + t.advance DESC
LIMIT 3;

-- CHALLENGE 3

CREATE TABLE most_profiting_authors
SELECT  a.au_id ,  r.ROYALTYS + t.advance as "profit" 
FROM titles as t
INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
RIGHT JOIN authors as a  ON ta.au_id=a.au_id
INNER JOIN (SELECT `TITLE ID` , `AUTHOR ID`, SUM(ra.`ROYALTY`) as ROYALTYS
            FROM (SELECT  t.title_id as "TITLE ID" , a.au_id as "AUTHOR ID" ,
                    t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as "ROYALTY" 
                    FROM titles as t
                    INNER JOIN sales as s  ON t.title_id=s.title_id
                    INNER JOIN titleauthor as ta  ON t.title_id=ta.title_id
                    RIGHT JOIN authors as a  ON ta.au_id=a.au_id) as ra
			GROUP BY `TITLE ID` , `AUTHOR ID`) as r  
ON a.au_id=r.`AUTHOR ID`
GROUP BY a.au_id;