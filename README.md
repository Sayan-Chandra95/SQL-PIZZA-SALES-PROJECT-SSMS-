# SQL-PIZZA-SALES-PROJECT-SSMS
# SQL Pizza Sales Project (SSMS)

This project demonstrates SQL-based analysis of pizza sales data using **SQL Server Management Studio (SSMS)**. It provides insights into order trends, revenue, product popularity, and customer behavior from a relational database schema.

---

## Project Description
The SQL Pizza Sales Project uses sales data stored in an SQL Server database to answer critical business questions that can drive strategy in a pizza business. By analyzing order patterns, revenue, and product popularity from a database created in SSMS, this project enables data-driven decision making for menu planning, promotions, and operations.

---

## Business Questions
Here are some of the business problems this project tackles:

- What is the total revenue over different time periods (daily, monthly, quarterly)?  
- Which pizza types or categories generate the most sales?  
- What are the top-selling pizzas?  
- How do order volumes vary by time of day or day of week?  
- What is the average order value per transaction?  
- Which pizza sizes are most preferred by customers?

---

## Database Schema
The SQL database schema consists of the following tables:

- **orders** — Contains order information (`order_id`, `order_date`, `total_amount`, `customer_id`)  
- **order_details** — Line items for each order (`pizza_id`, `quantity`, `unit_price`)  
- **pizzas** — Pizza master data (`pizza_id`, `name`, `type_id`, `size_id`)  
- **pizza_types** — Categories of pizza (e.g., `Classic`, `Specialty`)  
- **sizes** — Available pizza sizes (e.g., `Small`, `Medium`, `Large`)

---

## SQL Analysis
Analysis queries included in the project:

- **Aggregated Metrics**: Total sales, total orders, average order value  
- **Sales Trend**: Orders and revenue by hour, weekday, month  
- **Product Analysis**: Which pizzas sell the most (by count and value)  
- **Category & Size Analysis**: Revenue by pizza category and size  
- **Time-Based Patterns**: Peak sales hours and days

Each query is written in `.sql` files (available in the repository) and can be executed in SSMS against pizza sales schema.

---

## Key Insights
Based on SQL analysis, some of the major observations:

- Peak order times are around **lunch and dinner hours**, which aligns with customer eating habits.  
- Medium-sized pizzas have high order volume, while large pizzas generate higher revenue per order.  
- The **Specialty** pizza category contributes significantly to overall revenue.  
- Customer orders spike on **weekends**, suggesting an opportunity for targeted marketing.  
- Average order values increase when customers choose larger or premium pizzas.

---

## Tools & Technologies
- **SQL Server Management Studio (SSMS)**: To write and run SQL queries  
- **Microsoft SQL Server**: The underlying database to store and manage sales data  
- **Markdown**: For documenting the project in README  

---
   git clone https://github.com/Sayan-Chandra95/SQL-PIZZA-SALES-PROJECT-SSMS-.git

