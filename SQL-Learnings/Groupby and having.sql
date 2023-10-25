select * from sales

select * from sales as s
inner join item as i
on s.item_id = i.item_id
where i.brand <> 'Brand 11'
order by s.Item_id


select i.name, sum(s.qty) total_qty
from sales as s
inner join item as i
on i.item_id = s.item_id

group by i.name




select i.name, 
i.brand,
sum(s.qty) total_qty
from sales as s
inner join item as i
on i.item_id = s.item_id

group by i.name, i.brand


select i.name, 
i.brand,
sum(s.qty) total_qty
from sales as s
inner join item as i
on i.item_id = s.item_id
where i.brand = 'brand 11'

group by i.name, i.brand


select  i.brand, i.name
sum(s.qty) total_qty
from sales as s
inner join item as i
on i.item_id = s.item_id

group by i.brand


select i.brand,
i.name, 

sum(s.qty) total_qty
from sales as s
inner join item as i
on i.item_id = s.item_id


group by  i.brand, i.name
Order by 1 

select distinct brand from item


select i.name, 
sum(s.qty*s.price) gross_sale,
sum(s.qty) qty1,
sum(s.price) price1,
sum(s.qty) * sum(s.price) net_price

from sales as s
inner join item as i
on i.item_id = s.item_id

group by i.name
having sum(s.qty) >1000



--- brand wise sale
Select i.brand,
sum(s.qty * s.price) gross_sale
from sales as s
inner join item as i
on i.item_id = s.item_id

group by i.brand


----brand and city wise sale
Select i.brand,
g.city,
sum(s.qty * s.price) gross_sale
from sales as s
inner join item as i
on i.item_id = s.item_id
inner join geography as g
on g.city_id = s.city_id

group by i.brand, g.city


----city wise sale

Select g.city,
sum(s.qty * s.price) gross_sale

from sales as s
inner join geography as g
on g.city_id = s.city_id

group by g.city
order by 2 desc



Select g.city, 
sum(s.qty * s.price) gross_sale

from sales as s
inner join geography as g
on g.city_id = s.city_id

where qty>1

group by g.city
having sum(s.qty * s.price) >50000
order by 2



select distinct city from geography




