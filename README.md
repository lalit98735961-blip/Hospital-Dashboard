**POWER BI**
# Hospital Dashboard

## Project Overview

The Hospital Dashboard is a Business Intelligence project developed using Power BI to analyze hospital operations, patient demographics, and revenue performance. The dashboard helps management gain valuable insights into patient trends, departmental performance, and overall hospital efficiency.

## Business Problem

Hospitals generate large amounts of data every day. However, without proper analysis, it becomes difficult to identify trends, monitor performance, and make informed decisions.

This dashboard was created to provide a centralized view of key hospital metrics and support data-driven decision-making.

## Objectives

* Monitor patient admissions and demographics.
* Analyze department-wise performance.
* Track revenue trends and financial performance.
* Identify patterns in patient data.
* Support strategic planning and resource allocation.

## Dataset Information

The dataset contains hospital-related information such as:

* Patient ID
* Admission Date
* Department
* Age
* Gender
* Treatment Details
* Revenue Information

## Tools & Technologies Used

* Power BI
* Data Visualization
* Business Intelligence Techniques

## Key Performance Indicators (KPIs)

* Total Patients
* Total Revenue
* Average Revenue per Patient
* Department-wise Revenue
* Gender Distribution
* Age Group Analysis
* Monthly Admission Trends

## Dashboard Features

### Patient Analysis

* Patient demographics analysis
* Age group distribution
* Gender distribution

### Revenue Analysis

* Total revenue tracking
* Department-wise revenue comparison
* Revenue trend analysis

### Operational Analysis

* Department performance monitoring
* Patient admission trends
* Interactive filtering and drill-down analysis

## Key Insights

* Certain departments contribute significantly more revenue than others.
* The majority of patients belong to specific age groups.
* Patient admissions vary across different periods.
* Revenue trends help identify peak operational periods.

## Business Recommendations

* Allocate additional resources to high-performing departments.
* Improve efficiency in underperforming departments.
* Plan staffing requirements based on admission trends.
* Use demographic insights to improve patient services.

**SQL**
Hospital Analytics Project (sql)

In my Hospital Analytics project, I analyzed hospital admission and billing data using SQL to extract meaningful insights.

- Calculated the total number of patients and analyzed the gender distribution.
- Analyzed the average, minimum, and maximum age of patients.
- Examined patient admissions by admission type, year, and month to identify admission trends.
- Analyzed the number of patients by diagnosis and department to understand disease patterns and departmental workload.
- Calculated the average billing amount, total billing amount, and total hospital revenue.
- Analyzed billing based on payment method, admission type, and department.
- Identified the top 5 highest and lowest billing patients, along with patients who paid the maximum and minimum bills.
- Used a CASE statement to categorize billing amounts into High, Medium, and Low billing groups.
- Applied window functions such as LAG() and LEAD() to compare billing amounts with previous and next records.
- Performed data cleaning by combining first and last names using CONCAT() and modified the Billing_Amount column data type from INT to BIGINT.
- Identified the year with the highest number of patient admissions and determined the most common diagnosis.

**PYHTON**
**Python Hospital Analytics Project**
- Imported the NumPy and Pandas libraries and loaded the hospital dataset from a CSV file.
- Performed data exploration by checking data types, column names, dataset dimensions, and verified that there were no missing values.
- Combined the first name and last name columns into a single patient name column for better readability.
- Calculated the total number of rows, columns, and patients in the dataset.
- Analyzed total revenue and average billing amount, along with revenue segmented by Department, Admission Type, Diagnosis, Payment Method, Gender, Month, and Year.
- Counted patients based on Department, Admission Type, Diagnosis, Gender, Discharge Status, Month, and Year.
- Identified the maximum and minimum bill amounts and the oldest and youngest patients.
- Compared admissions and revenue across different years and analyzed monthly revenue trends.
- Calculated the average hospital stay duration using admission and discharge dates.
- Performed diagnosis analysis and found that Pneumonia was the most common reason for patient admissions.
- Computed gender-wise average and total billing amounts.
- Identified the top diagnoses by revenue and the patients with the highest billing amounts.
**Tools & Concepts Used
Python
Pandas
NumPy
Data Cleaning
Data Aggregation (groupby, value_counts)
Date-Time Analysis
Descriptive Statistics
Business Insights

