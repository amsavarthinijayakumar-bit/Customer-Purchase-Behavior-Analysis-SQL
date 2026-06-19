# Customer Purchase Behavior Analysis Using SQL

## Project Overview

This project analyzes customer demographics and purchasing behavior using SQL. The objective is to clean the data, perform exploratory data analysis, and generate business insights from customer and basket transaction datasets.

## Dataset
 Source: Kaggle
 Scale: 20,000 customer records | 15,000 transaction records

### Customer Details

* customer_id
* sex
* customer_age
* tenure

### Basket Details

* customer_id
* product_id
* basket_date
* basket_count

## Project Objectives

* Perform data quality checks and validation.
* Identify missing and invalid values.
* Analyze customer demographics.
* Analyze purchasing patterns and trends.
* Identify top-performing products and customers.
* Generate business insights from transactional data.

## Data Cleaning

The following data cleaning steps were performed:

* Checked for NULL values.
* Identified invalid customer ages.
* Corrected age values where birth years were stored instead of ages.
* Replaced unrealistic ages with NULL values.
* Validated customer and transaction records.

## SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* CASE Statements
* Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
* JOIN Operations
* Data Cleaning using UPDATE Statements

## Analysis Performed

### Customer Analysis

* Gender distribution
* Average customer age
* Age group classification
* Average tenure
* Longest-tenure customers

### Product Analysis

* Top-selling products
* Product popularity by purchase quantity
* Total unique products

### Customer Purchase Analysis

* Top customers by purchase volume
* Top customers by number of orders

### Trend Analysis

* Yearly purchase trends
* Monthly purchase trends
  
### Key Insights

### Customer Demographics


* Total unique customers analyzed: 15,000
* Average customer age: 28.56 years
* Average male age: 27.6 years | Average female age: 31.64 years
* Female customers are on average 4 years older than male customers
* Customer tenure ranges from 4 to 133 months, with an average of 44.39 months
* Long average tenure (~3.7 years) indicates strong customer retention

### Purchasing Behavior


* Total basket transactions: 32,306
* Total unique products purchased: 13,161
* Highest quantity purchased in a single year: 32,306 units (2019)
* 2019 recorded the most basket transactions: 1,500 baskets


### Monthly Trends


* May recorded the highest monthly purchases with 19,209 transactions
* June followed with 13,097 transactions
* May–June is the peak buying season — suggesting potential for targeted promotions during this period

### Business Recommendations

* Focus marketing campaigns in April–May to capitalize on peak season demand
* High average tenure (44 months) suggests a loyal customer base — a loyalty rewards program could further improve retention

