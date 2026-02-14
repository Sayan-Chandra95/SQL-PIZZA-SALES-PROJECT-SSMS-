# 🍕 SQL Pizza Sales Analysis — SSMS Project

## Project Overview
This project demonstrates **end-to-end SQL analysis** of pizza sales in SQL Server Management Studio (SSMS). It explores **sales performance, customer ordering patterns, and revenue trends**. The project highlights practical SQL skills used in real business scenarios, including **data extraction, aggregation, and insight generation** directly from a relational database.

---

## Business Objectives
- Analyze total revenue and order trends over time.  
- Identify **best-selling pizzas and high-performing categories**.  
- Study customer ordering patterns by **time of day, weekdays vs weekends**.  
- Understand revenue contribution by **pizza size, type, and category**.  
- Generate **actionable business recommendations** for menu, pricing, and promotions.  

---

## Database Structure
The analysis uses a relational database with the following tables:

| Table Name      | Description |
|-----------------|------------|
| `orders`        | Main order info: date, time, total value |
| `order_details` | Line items for each order: pizza, quantity, price |
| `pizzas`        | Pizza details: name, type, size, price |
| `pizza_types`   | High-level pizza categories (Chicken, Veg, Specialty, etc.) |
| `sizes`         | Available pizza sizes (S, M, L, XL) |

This schema supports **granular analysis** of sales performance and customer preferences.

---

## Business Questions Addressed
1. Total revenue and order trends across daily, weekly, and monthly timelines.  
2. Best-selling pizzas, top categories, and highest-priced items.  
3. Most popular pizza sizes and order frequency by hour.  
4. Revenue contribution by pizza type and category.  
5. Cumulative revenue trends over time.  
6. Top pizzas based on **quantity and revenue** within each category.  

---

## SQL Techniques Used
- **Joins:** INNER JOIN, LEFT JOIN  
- **Aggregations:** SUM, COUNT, AVG, MAX  
- **Window Functions:** ROW_NUMBER(), RANK(), OVER()  
- **Grouping & Filtering:** GROUP BY, HAVING  
- **Date Functions:** DATEPART(), DATENAME(), MONTH(), YEAR()  
- **CTEs (Common Table Expressions)** and **Subqueries**  
- All SQL queries are available in the `sql/` folder.

---

## Key Insights (from CSV results)

| Insight | Result / Observation | CSV File |
|---------|--------------------|---------|
| Total Orders | 3,582 orders placed during the dataset period | [Retrieve the total number of orders placed](results/Retrieve the total number of orders placed.csv) |
| Total Revenue | $152,745 generated from pizza sales | [Calculate the total revenue generated from pizza sales](results/Calculate the total revenue generated from pizza sales.csv) |
| Highest-Priced Pizza | The Barbecue Chicken XL pizza at $20.75 | [Identify the highest-priced pizza](results/Identify the highest-priced pizza.csv) |
| Most Popular Pizza Size | Medium pizzas are ordered the most; large pizzas drive higher revenue | [Identify the most common pizza size ordered](results/Identify the most common pizza size ordered.csv) |
| Top 5 Pizza Types | Classic Deluxe, BBQ Chicken, Margherita are top sellers | [List the top 5 most ordered pizza types along with their quantities](results/List the top 5 most ordered pizza types along with their quantities.csv) |
| Category-wise Orders | Chicken pizzas contribute 45% of total quantity sold | [Join the necessary tables to find the total quantity of each pizza category ordered](results/Join the necessary tables to find the total quantity of each pizza category ordered.csv) |
| Category Distribution | Specialty pizzas are the largest group by count | [Join relevant tables to find the category-wise distribution of pizzas](results/Join relevant tables to find the category-wise distribution of pizzas.csv) |
| Orders by Hour | Lunch and dinner hours show highest order spikes | [Determine the distribution of orders by hour of the day](results/Determine the distribution of orders by hour of the day.csv) |
| Avg Pizzas per Day | Average daily pizza orders are 12 | [Group the orders by date and calculate the average number of pizzas ordered per day](results/Group the orders by date and calculate the average number of pizzas ordered per day.csv) |
| Top 3 Pizzas by Revenue | Shows highest revenue-generating pizzas | [Determine the top 3 most ordered pizza types based on revenue](results/Determine the top 3 most ordered pizza types based on revenue.csv) |
| Top 3 Pizzas by Category Revenue | Best pizzas within each category | [Determine the top 3 most ordered pizza types based on revenue for each pizza category](results/Determine the top 3 most ordered pizza types based on revenue for each pizza category.csv) |
| % Revenue Contribution | Chicken pizzas generate the highest revenue share | [Calculate the percentage contribution of each pizza type to total revenue](results/Calculate the percentage contribution of each pizza type to total revenue.csv) |
| Cumulative Revenue | Revenue steadily increased over months, peaking in December | [Analyze the cumulative revenue generated over time](results/Analyze the cumulative revenue generated over time.csv) |

---

## Business Impact
This analysis helps a pizza business to:  
- Identify **high-performing menu items**  
- Optimize **inventory planning and staffing**  
- Design **targeted promotions for peak hours**  
- Improve **pricing strategy by pizza type and size**  
- Make **data-driven decisions** to increase revenue  

---

## Tools & Technologies
- SQL Server Management Studio (SSMS)  
- Microsoft SQL Server for database creation and querying  
- CSV / Excel for exported query results  
- Optional: Power BI for visualization  

---

## Repository Structure
