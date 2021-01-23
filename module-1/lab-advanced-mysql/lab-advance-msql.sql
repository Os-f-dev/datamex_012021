use pubs2;
CREATE temporary table Temp1 As
SELECT ta.au_id, ta.title_id, IFNULL(t.price*s.qty*t.royalty/100 *ta.royaltyper, 0 ) AS 'sales_royalty'
 FROM titleauthor AS ta
 LEFT JOIN titles AS t ON ta.title_id=t.title_id
 LEFT JOIN sales AS s ON ta.title_id = s.title_id ;



 select output2.au_id,  sum( aggregated_royalty+ IFNULL(titles.advance,0 ) )as 'profits' from
(select au_id, title_id, sum( sales_royalty) as 'aggregated_royalty'
from Temp1 as output1
group by au_id, title_id) as output2
 LEFT JOIN titles ON output2.title_id = titles.title_id
 GROUP BY output2.au_id
 ORDER BY profits DESC
 LIMIT 3;
