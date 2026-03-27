with all_orders as (
select * from Orders_2023
union all
select * from Orders_2024
union all
select * from Orders_2025)

select *, revenue-cogs as profit,YEAR(orders.OrderDate) AS Year,
DATEPART(ISO_WEEK, orders.OrderDate) AS Week,
DATEADD(WEEK, DATEDIFF(WEEK, 0, DATEADD(DAY, -1, OrderDate)), 0) as week_date
from all_orders as orders inner join customers as customers on orders.CustomerID=customers.CustomerID
join products as products on orders.ProductID=products.ProductID
