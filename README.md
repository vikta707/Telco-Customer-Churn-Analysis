# Telco Customer Churn Analysis

## Project Overview
This project performs an end-to-end analysis of customer churn in a telecom company using SQL and Power BI. The objective is to identify key factors influencing customer churn and provide actionable insights to improve retention.

---

## Objectives
- Analyse customer behaviour and churn patterns  
- Identify high-risk customer segments  
- Determine key drivers of churn  
- Provide data-driven business recommendations  

---

## Tools
- **SQL** – Data cleaning, transformation, and analysis  
- **Power BI** – Data visualization and dashboard creation  
- **Excel / CSV** – Dataset handling  

---

## Dataset
Source: Kaggle – Telco Customer Churn Dataset

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

## Key Insights
- Customers on month-to-month contracts churn at significantly higher rates than long-term contracts
- Customers with high monthly charges and low tenure are the highest-risk segment
- Electronic check users show consistently higher churn, suggesting payment friction
- Customers with multiple protection services have significantly lower churn, indicating service bundling improves retention
- Paperless billing has higher churn rates
  
---

## Business Recommendations
- Encourage customers to switch to long-term contracts  
- Offer targeted retention incentives for high-risk segments  
- Improve onboarding experience for new customers  
- Review pricing strategies for high-charge customers
- Offer protection service package that includes all or multiple protection services

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

