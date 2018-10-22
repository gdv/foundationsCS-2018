-- On the customers table of the sample database NorthWind compute

--     the contents of the table
select *
from customers;

--     the values of the ID field
select id
from customers;

--     the values of the last_name and first_name fields
select last_name, first_name
from customers;

--     the tuples with a non-NULL note
select *
from customers
where notes is not null;

--     the total number of orders

select count(*)
from orders;

--     the number of orders for each customer

select customer_id, count(*)
from orders
group by customer_id;

--     for each customer, the number of orders such that the shipping fee is larger than 20.

select customer_id, count(*)
from orders
group by customer_id
where shipping_fee > 20;


