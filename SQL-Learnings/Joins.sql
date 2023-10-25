Select * from sales

Select * from item


---Created the sales3 table
Select * into sales3 
from sales
where Item_ID<=50;

Select * from sales3

----Created the item3 table

Select * into item3
from item
where Item_Id>10

Select * from item3


----Joins of table sales and item

Select *
from sales as s
inner join dbo.item as i
on s.Item_ID = i.Item_Id


Select s.Order_No,
i.Item_Id Item_table_id,
s.Item_ID
from sales as s
inner join dbo.item as i
on s.Item_ID = i.Item_Id


---join between sales3 and item
Select * 
from sales3 as s
inner join item as i
on s.Item_ID = i.Item_Id

Select * 
from sales3 as s
right join item as i
on s.Item_ID = i.Item_Id

Select Count(Distinct item_id) from sales3
Select count(*) from item

Select * 
from sales3 as s
left join item as i
on s.Item_ID = i.Item_Id


---Joins between sales3 and item3
Select *
from sales3 as s
inner join item3 as i
on s.Item_ID = i.Item_Id

Select * from sales3 
where Item_ID>10

Select *
from sales3 as s
left join item3 as i
on s.Item_ID = i.Item_Id

Select *
from sales3 as s
right join item3 as i
on s.Item_ID = i.Item_Id
order by i.Item_Id desc


Select * 
from sales as s
inner join item as i
on s.Item_ID = i.Item_Id
inner join geography as g
on s.City_Id = g.City_Id


select * from geography


Select * 
from sales as s
inner join item as i
on s.Item_ID = i.Item_Id
right join geography as g
on s.City_Id = g.City_Id


Select * 
from sales as s
inner join item as i
on s.Item_ID = i.Item_Id
left join geography as g
on s.City_Id = g.City_Id

---- another way for same join as above

Select * 
from sales,
item, geography
where sales.Item_ID = item.Item_Id
and sales.City_Id = geography.City_Id


Select * from Learn_SQL.dbo.sales
order by 2

Select distinct item_ID from Learn_SQL.dbo.sales
order by item_id




