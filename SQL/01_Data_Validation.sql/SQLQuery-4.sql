use SalesAnalytics;
go
 select top 10*
 from Orders;

 select count(*) as total_rows
 from orders;

 select count(*)
 from INFORMATION_SCHEMA.columns
 where table_name = 'Orders';

 exec sp_help Orders;

 select
 sum(case when sales is null then 1 else 0 end) as sales_null,
 sum(case when profit is null then 1 else 0 end) as profit_null,
 sum(case when customer_Name is null then 1 else 0 end) as CustomerName_null,
 sum(case when Product_Name is null then 1 else 0 end) as ProductName_null
 from orders;

 select 
 row_id,
 count(*) as duplicateCount
 from orders
 group by row_id
 having count(*) > 1;

 select 
 order_id,
 count(*) as duplicateCount
 from orders
 group by order_id
 having count(*) > 1;

 select
 min(order_date) as first_order,
 max(order_date) as last_order
 from orders;

 select 
 count (distinct customer_id) as customers
 from orders;

 select 
 count (distinct product_id) as products
 from orders;

 select 
 distinct category
 from orders;

 select
 distinct region 
 from orders;

 select 
 distinct segment
 from orders