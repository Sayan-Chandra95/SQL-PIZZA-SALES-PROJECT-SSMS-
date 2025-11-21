🍕 SQL Pizza Sales Analysis — SSMS Project


 **Project Overview**

This project showcases end-to-end SQL analysis performed in SQL Server Management Studio (SSMS) to explore pizza sales performance, customer behavior, and revenue patterns.
It demonstrates practical SQL skills used in real business environments—data extraction, transformation, aggregation, and insight generation directly from a relational database.

 **Project Objectives**

Understand total revenue and order trends across time.

Identify best-selling pizzas and high-performing categories.

Analyze customer ordering patterns (time of day, weekdays vs weekends).

Study revenue contribution by pizza size, type, and category.

Derive data-driven recommendations to optimize pricing, promotions, and menu planning.

 **Database Structure**

The analysis is based on a well-structured relational database with the following tables:

Table Name	Description
orders	Main order info: date, customer, total value
order_details	Line items for each order: pizza, quantity, unit price
pizzas	Pizza details: name, category, size
pizza_types	High-level pizza categories (Classic, Specialty, Veggie, etc.)
sizes	Available pizza sizes (S, M, L, XL)

This schema supports granular analysis of sales performance and customer preferences.

 **Key Business Questions Answered**

What is the total revenue over daily, weekly, and monthly timelines?

Which pizzas and categories perform the best?

What is the average order value?

At what hours and days do customers order the most?

Which pizza sizes generate the most revenue and volume?

What seasonal or behavioral patterns exist in the sales data?

 **SQL Techniques Used**

This project demonstrates strong SQL fundamentals such as:

Joins (INNER, LEFT)

Aggregation (SUM, COUNT, AVG, MAX)

Window Functions (ROW_NUMBER, RANK, OVER)

Grouping & Filtering (GROUP BY, HAVING)

Date Functions (DATENAME, DATEPART, MONTH, YEAR)

CTEs (Common Table Expressions)

Subqueries for deeper insights

All queries are available in the repository as .sql files.

 **Key Insights from Analysis**

(Replace with your actual results if needed)

Lunch and dinner hours show the highest order spikes.

Medium pizza size is most frequently ordered, while large pizzas drive higher revenue.

Specialty pizzas account for a major share of total earnings.

Sales increase significantly on Fridays, Saturdays, and Sundays, indicating weekend demand.

A small number of top pizzas contribute a large portion of total revenue (Pareto trend).

 **Business Impact**
 
This analysis helps a pizza business:

Identify high-performing menu items

Optimize inventory planning

Design targeted promotions for peak hours

Plan weekend staffing and delivery resources

Improve pricing strategy by size and category

 **Tools & Technologies**

SQL Server Management Studio (SSMS)

Microsoft SQL Server for database creation and querying
