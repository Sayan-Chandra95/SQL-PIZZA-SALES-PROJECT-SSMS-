-- Retrieve the total number of orders placed
Select count(order_id) AS Total_Orders
from orders;

--Calculate the total revenue generated from pizza sales.
Select
Round(Sum (order_details.quantity * pizzas.price),2) AS Total_Sales
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id;

--Identify the highest-priced pizza.
Select Top 1
pizza_types.name, pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price DESC;

--Identify the most common pizza size ordered.
select
pizzas.size, count(order_details.order_details_id) AS Order_count
from pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizzas.size
order by Order_count
desc;

--List the top 5 most ordered pizza types along with their quantities.
Select Top 5
pizza_types.name,
Sum(order_details.quantity) AS Quantity
From pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details 
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
Order by Quantity
DESC;

--Join the necessary tables to find the total quantity of each pizza category ordered.
Select pizza_types.category,
Sum(order_details.quantity) AS Quantity
From pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details 
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category
Order by Quantity
DESC;

--Determine the distribution of orders by hour of the day.
SELECT 
DATEPART(HOUR, [time]) AS Hour,
COUNT(order_id) AS Order_count
FROM orders
GROUP BY DATEPART(HOUR, [time])
ORDER BY Hour;

--Join relevant tables to find the category-wise distribution of pizzas.
Select category, count(name) AS Distribution
from pizza_types
Group by category;

--Group the orders by date and calculate the average number of pizzas ordered per day.

Select round(AVG(quantity),0) AS AVG_Order
from
(Select orders.date,
Sum(order_details.quantity) AS Quantity
from orders join order_details
on orders.order_id = order_details.order_id
Group by orders.date) AS Order_quantity;

--Determine the top 3 most ordered pizza types based on revenue.
Select Top 3
pizza_types.name,
Sum(order_details.quantity * pizzas.price) AS Revenue
From pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on pizzas.pizza_id = order_details.pizza_id
Group by pizza_types.name
order by Revenue
DESC;

--Calculate the percentage contribution of each pizza type to total revenue.

Select
pizza_types.category,
Round(Sum(order_details.quantity * pizzas.price)/
(Select Round(Sum(order_details.quantity * pizzas.price),2) AS Total_Sales
From order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id) *100,2) AS Revenue
From pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on pizzas.pizza_id = order_details.pizza_id
Group by pizza_types.category
order by Revenue
DESC;

--Analyze the cumulative revenue generated over time.

Select date,
Sum(Revenue) over(order by date)
from(
Select orders.date,
Sum(order_details.quantity * pizzas.price) AS Revenue
From order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id
join orders
on orders.order_id = order_details.order_id
Group by orders.date) AS Sales;

--Determine the top 3 most ordered pizza types based on revenue for each pizza category.

Select category, name, Revenue
From(
Select category, name, Revenue,
rank() over(partition by category order by revenue desc) AS rn
From
(Select pizza_types.category, pizza_types.name,
Sum(order_details.quantity * pizzas.price) AS Revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id =pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category, pizza_types.name) AS a) AS b
where rn <= 3; 
