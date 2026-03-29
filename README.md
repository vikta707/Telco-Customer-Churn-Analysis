# Telco Customer Churn Analysis

## Project Overview
This project performs an end-to-end analysis of customer churn for a telecom company using SQL and Power BI. The goal is to identify why customers leave and provide actionable insights to improve retention.

---

## Key Insights
- Month-to-month contracts have the highest churn rates.  
- High monthly charges combined with low tenure create the highest-risk customer segment.  
- Electronic check users churn more frequently, suggesting payment friction.  
- Customers with multiple protection services churn less, indicating service bundling improves retention.  
- Paperless billing shows higher churn rates.  

---

## Business Impact
This analysis helps the company target high-risk customers, reduce churn, and improve revenue retention through data-driven strategies.

---

## Objectives
- Analyse customer behaviour and churn patterns.  
- Identify high-risk customer segments.  
- Determine key drivers of churn.  
- Provide actionable business recommendations.  

---


## Tools
- **SQL** – Data cleaning, transformation, and analysis  
- **Power BI** – Data visualization and dashboard creation  
- **Excel / CSV** – Dataset handling  

---

## Dataset
Source: Kaggle – Telco Customer Churn Dataset (~7,000 customers, 21 features) 

The dataset includes:
- Customer demographics (gender, senior citizen, etc.)
- Account information (tenure, contract type, payment method)
- Services (internet, phone, streaming)
- Churn status


## SQL Workflow
The SQL analysis is divided into three stages:

 **Data Exploration**
  - Initial inspection of dataset structure and quality  
  - Identification of missing values and anomalies  

 **Data Cleaning**
  - Handling null values  
  - Standardising and transforming variables  

 **Data Analysis**
  Key analyses performed:
- Churn rate by contract type  
- Churn vs tenure distribution  
- Impact of monthly charges on churn  
- Churn by payment method and services (Internet and Phone)
- Churn by demographics (partner, gender etc)
- Characteristics of churn customers (tenure/monthly payments etc)
   
>NOTE: All SQL queries used in this project are included in the `sql` folder.  
---

## Power BI Dashboard
The dashboard includes:

### Overview Dashboard
<img width="634" height="253" alt="dashboard1" src="https://github.com/user-attachments/assets/07f16a11-5246-4a32-839d-774f1ca03550" />

Provides a high-level summary of total customers, churn rate, and key KPIs.

---

### Churn Behaviour Analysis
<img width="593" height="334" alt="dashboard2" src="https://github.com/user-attachments/assets/d5dd24da-406a-4e0b-ad8d-8c55283c91f2" />

Breaks down churn behaviour by monthly payments and tenure groups whilst considering customer information such as dependents, partner and senior citizens

---

### Protection Services
<img width="534" height="319" alt="dashboard3" src="https://github.com/user-attachments/assets/32a76c88-25b7-4a04-b418-d1baec22d7f2" />

Identifies the effect of protection services on churn rate by billing method and contract type

---

## Business Recommendations
- Promote month-to-month customers to switch to long-term contracts to reduce churn.  
- Offer retention incentives for high-risk, high-charge, short-tenure customers.  
- Improve onboarding experience for new customers to reduce early churn.  
- Review pricing strategies for high-charge customers.  
- Offer bundled protection service packages to reduce churn.  

---

## What I Learned
- Writing efficient SQL queries for real-world datasets  
- Transforming raw data into actionable insights  
- Building interactive dashboards in Power BI  
- Communicating results with a business focus  

---

## Future Improvements
- Add predictive modelling for churn prediction  
- Deploy dashboard online  
- Automate data pipeline  

---

