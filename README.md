##Swiggy Restaurant Data Analysis – SQL Project
Project Overview

This project involves analyzing a Swiggy restaurant dataset using SQL to derive actionable business insights. The dataset contains information on restaurant details such as area, city, pricing, ratings, cuisine types, and delivery times. The goal of the project is to solve 10 business questions by querying the dataset and extracting meaningful trends that can support decision-making in food delivery operations and marketing.

Swiggy Dataset


#Business Problems Solved

The project addresses the following business questions using SQL queries:

Which restaurants have the highest average ratings in Bangalore?

What is the average price of food items per area?

Which restaurants offer the fastest delivery times?

What are the top 10 most expensive restaurants?

Which areas have the highest number of restaurants?

How does price relate to average ratings among restaurants?

Which restaurants serve multiple cuisines?

What is the average delivery time per area?

Which restaurants have the highest total ratings?

What are the top-rated restaurants for specific cuisines (e.g., Mughlai, Chinese, North Indian)?

SQL Queries

Each question was solved using SQL queries on the swiggy table. Queries include aggregate functions, filtering, ordering, and string manipulation to handle multiple cuisines.

Example Query (Fastest Delivery Times):

SELECT restaurant, delivery_time
FROM swiggy
ORDER BY CAST(delivery_time AS UNSIGNED) ASC
LIMIT 5;

Key Insights

Identified top-rated and most popular restaurants in Bangalore.

Determined pricing trends across different areas.

Found restaurants with fastest delivery times for better customer experience.

Highlighted restaurants offering multiple cuisines, aiding marketing strategies.

Analyzed relationships between price, ratings, and delivery time for business decisions.

Technologies Used

MySQL / SQL Server

Git & GitHub for version control

How to Use

Clone the repository:

git clone <repo_url>


Import the swiggy dataset into your SQL database.

Run the SQL queries provided to reproduce the analysis and insights.
