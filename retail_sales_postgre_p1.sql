
CREATE TABLE retail_sales (
    transactions_id INTEGER,
    sale_date DATE,
    sale_time TIME,
    customer_id INTEGER,
    gender VARCHAR(10),
    age INTEGER,
    category VARCHAR(30),
    quantiy INTEGER,
    price_per_unit NUMERIC(10,2),
    cogs NUMERIC(10,2),
    total_sale NUMERIC(10,2)
);
	
SELECT *FROM retail_sales;


select count(*) as total_sales
from retail_sales;


select count(distinct customer_id) as unique_customers
from retail_Sales

select count(distinct category) as categories 
from retail_sales


--Business Analysis 

select * from retail_sales
where sale_date = '2022-11-05';


SELECT *
FROM retail_sales
WHERE category = 'Clothing'
and 
to_char(sale_date,'YYYY-MM') = '2022-11'
and 
quantity >=4



SELECT
    category,
    SUM(total_sale) AS net_sales,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

SELECT AVG(age) AS average_age
FROM retail_sales
WHERE category = 'Beauty';

select  * from retail_sales
where  total_sale> 1000;

select category,gender ,
count(*) as total_transactions
from retail_sales
group by 1,2
order by 1;



select 
   extract (year from sale_date)as year,
   extract (month from sale_date) as month,
   avg(total_sale)  as average_sales

from retail_sales
group by 1,2
order by 1,2;


select *from retail_sales;


select 
   customer_id,
   sum(total_sale) as total_Sales
from retail_sales
group by 1
order by 2
limit 5;




select category,
count(distinct customer_id) as unique_customers

from retail_sales
group by category;


select *,
   case
        when extract(hour from sale_time)<12 then 'morning'
		when extract(hour from sale_time) between 12 and 17 then 'afternoon'
		else 'evening'
	end as shift
from retail_sales




  









