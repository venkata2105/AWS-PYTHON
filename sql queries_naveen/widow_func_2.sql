select * FROM SALES_DATA ORDER BY PRODUCT_ID ;
select *,rank() over(partition by product_id order by price) as rank_num, 
row_number() over(partition by product_id order by price) as row_num,
dense_rank() over(partition by product_id order by price) as dens_rank 
from sales_data
select *, first_value(price) over(partition by product_id order by price desc) as fir_num from sales_data;
select *, last_value(price) over(partition by product_id order by price desc
range between unbounded preceding and current row ) as las_num from sales_data;
select *, last_value(price) over(partition by product_id order by price desc
range between unbounded preceding and unbounded following) as las_num from sales_data;
select *,lag(price) over(partition by product_id order by price desc) from sales_data;
select *,lead(price) over(partition by product_id order by price desc) from sales_data;


