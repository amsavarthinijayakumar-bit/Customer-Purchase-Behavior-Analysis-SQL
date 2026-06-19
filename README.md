# Customer Purchase Behavior Analysis Using SQL

## Project Overview

This project analyzes customer demographics and purchasing behavior using SQL. The objective is to clean the data, perform exploratory data analysis, and generate business insights from customer and basket transaction datasets.

## Dataset
 Source: Kaggle
 Scale: 15,000 customer records | 20,000 transaction records

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

## Key Insights

* Customer demographics were analyzed using gender and age distributions.
* Top-performing products were identified using purchase quantities.
* Customer purchasing behavior was analyzed through order frequency and basket quantities.
* Yearly and monthly trends revealed changes in purchasing activity over time.
* Data cleaning improved data quality and ensured more reliable analysis.

## Files Included

* SQL_Queries.sql
* README.md
* Screenshots/

## Tools Used

* MySQL
* MySQL Workbench


Amsahini
Aspiring Data Analyst
