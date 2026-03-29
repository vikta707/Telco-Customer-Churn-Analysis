# Telco Customer Churn Analysis

## Project Overview
This project performs an end-to-end analysis of customer churn in a telecom company using SQL and Power BI. The objective is to identify key factors influencing customer churn and provide actionable insights to improve retention.

---

## Objectives
- Analyze customer behavior and churn patterns  
- Identify high-risk customer segments  
- Determine key drivers of churn  
- Provide data-driven business recommendations  

---

## Tools & Technologies
- **SQL** – Data cleaning, transformation, and analysis  
- **Power BI** – Data visualization and dashboard creation  
- **Excel / CSV** – Dataset handling  

---

## Dataset
- Source: Kaggle – Telco Customer Churn Dataset
-  
Colomns:
- customerID
- gender: Whether the customer is a male or a female
- SeniorCitizen: Whether the customer is a senior citizen or not (1, 0)
- Partner: Whether the customer has a partner or not (Yes, No)
- Dependents: Whether the customer has dependents or not (Yes, No)
- tenure: Number of months the customer has stayed with the company
- PhoneService: Whether the customer has a phone service or not (true, false)
- MultipleLines: Whether the customer has multiple lines or not (Yes, No, No phone service)
- InternetService: Customer’s internet service provider (DSL, Fiber optic, No)
- OnlineSecurity: Whether the customer has online security or not (Yes, No, No internet service)
- OnlineBackup: Whether the customer has online backup or not (Yes, No, No internet service)
- DeviceProtection: Whether the customer has device protection or not (Yes, No, No internet service)
- TechSupport: Whether the customer has tech support or not (Yes, No, No internet service)
- StreamingTV: Whether the customer has streaming TV or not (Yes, No, No internet service)
- StreamingMovies: Whether the customer has streaming movies or not (Yes, No, No internet service)
- Contract: The contract term of the customer (Month-to-month, One year, Two year)
- PaperlessBilling: Whether the customer has paperless billing or not (Yes, No)
- PaymentMethod: The customer’s payment method (Electronic check, Mailed check, Bank transfer (automatic), Credit card
- MonthlyCharges: The amount charged to the customer monthly
- TotalCharges: The total amount charged to the customer
- Churn: Whether the customer churned or not (Yes or No)

---

## Data Cleaning & Preparation (SQL)
- Handled missing and null values  
- Standardized categorical variables  
- Created a churn flag for analysis  
- Removed duplicates and ensured data consistency  

---

## Exploratory Data Analysis (SQL)
Key analyses performed:
- Churn rate by contract type  
- Churn vs tenure distribution  
- Impact of monthly charges on churn  
- Churn by payment method and services (Internet and Phone)
- Churn by demographics (patenr, gender etc)
- Characteristics of churn customers (tenure/monhtly payments etc)
  
---

## Power BI Dashboard
The dashboard includes:

### Overview Dashboard
<img width="634" height="253" alt="dashboard1" src="https://github.com/user-attachments/assets/07f16a11-5246-4a32-839d-774f1ca03550" />

Provides a high-level summary of total customers, churn rate, and key KPIs.

---

### Churn Behaviour Analysis
<img width="593" height="334" alt="dashboard2" src="https://github.com/user-attachments/assets/d5dd24da-406a-4e0b-ad8d-8c55283c91f2" />

Breaks down churn behaviour by monthly payments and tenure groups whilst considering customer information such as dependents, partner and senior citizins

---

### Protection Services
<img width="534" height="319" alt="dashboard3" src="https://github.com/user-attachments/assets/32a76c88-25b7-4a04-b418-d1baec22d7f2" />

Identifies the effect of protection services on churn rate by billing method and contract type

---

## Key Insights
- Customers on month-to-month contracts have significantly higher churn rates  
- Higher monthly charges are associated with increased churn  
- Customers with short tenure are more likely to churn  
- Electronic check payment method shows higher churn behavior
- Customers with at least one protection service decreases churn, taking mutiple significantly lowers churn rate
- Paperless billing has higher churn rates

---

## Business Recommendations
- Encourage customers to switch to long-term contracts  
- Offer targeted retention incentives for high-risk segments  
- Improve onboarding experience for new customers  
- Review pricing strategies for high-charge customers
- Offer protection service package that includes all or mutiple protection services

## What I Learned
- Writing efficient SQL queries for real-world datasets  
- Transforming raw data into actionable insights  
- Building interactive dashboards in Power BI  
- Communicating results with a business focus  

---

## Future Improvements
- Add predictive modeling for churn prediction  
- Deploy dashboard online  
- Automate data pipeline  

---

