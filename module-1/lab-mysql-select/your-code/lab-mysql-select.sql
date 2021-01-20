/*USE publications;

-- Challenge 1
select a.au_id, b.au_lname, b.au_fname, c.title, d.pub_name 
	from titleauthor as a
		inner join authors as b
		on a.au_id = b.au_id
		inner join titles as c
		on a.title_id = c.title_id
		inner join publishers as d
        on c.pub_id = d.pub_id;
        
-- Challenge 2
select tabla.pub_name, tabla.au_lname, tabla.au_fname, count(tabla.pub_name) as COUNT 
	from ( select a.au_id, b.au_lname, b.au_fname, c.title, d.pub_name 
				from titleauthor as a
                inner join authors as b
                on a.au_id = b.au_id
                inner join titles as b
                on a.title_id = c.title_id
                inner join publisher as d
                on c.pub_id = d.pub_id
		 )
         
group by tabla.pub_name, tabla.au_lname, tabla.au_fname
order by COUNT desc, au_lname;
                
-- Challenge 3
select a.au_id, a.au_lname, a.au_fname, titsa.ventas 
	from ( select tit.title_id, tit.title, 
			case when  sum(s.qty) is null
            then 0
            else sum(s.qty) is null
            end
			as ventas
			from titles as tit
			
            left join sales as s
            on tit.title_id = s.title_id
            group by tit.title_id, tit.title
		  ) as titsa

inner join titleauthor as ta
on titsa.title_id = ta.title_id
inner join authors as a
on ta.au_id = a.au_id
order by wentas desc
limit 3
          
-- Challenge 4

select a.au_id, a.au_lname, a.au_fname, titsa.ventas 
from ( select tit.title_id, tit.title,
		case when sum(s.qty) is null
        then 0
        else sum(s.qty)
        end
        as ventas
        from titles as tit
        
        left join sales as a
        on tit.title_id = s.title_id
        group by tit.title_id, tit.title
	 ) as titsa
     
inner join titleauthor as ta
on titsa.title_id = ta.title_id
inner join authors as a
on ta.au_id = a.au_id
order by ventas desc

-- lab 2
create temporary table parcial-sales
select title_id, au_id, price*qty*(royalty/100)*(royaltyper/100) as sales_royalty 
from ( select au.au_id, tiau royaltyper, sa.title, ti.price, ti.royalty, sa.ord_num, sa.qty
			from sales as sa
            inner join titles as ti
            on sa.title_id = ti.title_id
            inner join titleauthor as tiau
            on ti.title_id = tiau.title_id
            inner join authors as au
            on tiau.au_id = au.au_id
	 ) as my_data
order by au_id desc*/




