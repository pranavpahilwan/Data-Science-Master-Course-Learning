Select * from sales

Select Order_no, Item_id 
from sales

Select * from sales
where Item_ID = 1
order by Sales_Date desc

Select * from sales
where Item_ID <> 1 and Item_id <> 2
order by Item_id

Select * from sales
where Item_ID = 1 OR Item_ID = 2
order by Item_id	

Select * from sales
where Item_id <> 1 and City_Id= 2
order by Item_ID

Select * from sales
where Item_id <> 1 and City_Id in (1,2,3,4)
order by Item_ID

Select * from sales
where Item_id <> 1 and City_Id not in (1,2,3,4)
order by Item_id, City_id 


Select * from sales
where Item_id between 10 and 25
order by Item_ID


Select * from dbo.item


---Create table sales1
---as select * from sales

Select * into sales1 from sales

Select * from sales1

update sales1
set Item_ID = null
where Item_ID >=50
--- causes error above because of properties of column Item_id is not null

USE [Learn_SQL]
GO

/****** Object:  Table [dbo].[sales]    Script Date: 14-10-2023 1.43.21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sales](
	[Order_No] [int] NOT NULL,
	[Item_ID] [int] NULL,
	[Sales_Date] [date]  NULL,
	[Customer_Id] [int]  NULL,
	[City_Id] [int]  NULL,
	[Qty] [int]  NULL,
	[Price] [float]  NULL,
	[COGS] [int]  NULL,
	[Discount_Percent] [int]  NULL
) 
GO

USE [Learn_SQL]
GO

/****** Object:  Table [dbo].[sales]    Script Date: 14-10-2023 1.44.13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sales2](
	[Order_No] [int] NOT NULL,
	[Item_ID] [int]  NULL,
	[Sales_Date] [date]  NULL,
	[Customer_Id] [int]  NULL,
	[City_Id] [int]  NULL,
	[Qty] [int]  NULL,
	[Price] [float]  NULL,
	[COGS] [int]  NULL,
	[Discount_Percent] [int]  NULL
) 
GO

Select * into sales2 from sales ---did not worked

Insert into sales2
Select * from sales

select * from sales2

Select count(*) from sales2 ---gives the no of rows

update sales2
set Item_ID = null
where Item_ID >=50

select * from sales2
where Item_ID	>=50


select * from sales2
where Item_ID	= null ---shows blank table


select * from sales2
where Item_ID is null

select * from sales2
where Item_id is not null





