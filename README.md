# Telco Customer Churn Analysis & Predictive Modelling

## Project Overview
This project performs an end-to-end analysis and predictive modelling of customer churn for a telecom company. Originally built using SQL and Power BI to identify *why* customers leave, the project has been extended with a Python machine learning pipeline to predict *which* customers are at high risk of churning in the future.

---

## Key Insights & Modelling Results
- **Month-to-month contracts** have the highest churn rates.  
- **High monthly charges combined with low tenure** create the highest-risk customer segment.  
- **Electronic check users** churn more frequently, suggesting payment friction.  
- **Service Bundling:** Customers with multiple protection services churn less, indicating bundling improves retention.  
- **Paperless billing** shows higher churn rates.  
- **Predictive Power:** The optimised machine learning model successfully flags high-risk customers, allowing for proactive rather than reactive retention strategies.

---

## Business Impact
This project bridges the gap between historical insights and future prevention. By combining interactive BI dashboards with custom-threshold predictive modelling, the business can target high-risk customers before they churn, maximising the financial ROI of customer retention campaigns.

---

## Objectives
- Analyse customer behaviour and churn patterns.  
- Identify high-risk customer segments and key drivers of churn.  
- **Build an automated machine learning pipeline to predict future churn.**  
- **Optimise classification thresholds to align predictions with business cost-containment goals.**
- Provide actionable business recommendations.  

---

## Tools & Libraries
- **SQL** – Data cleaning, transformation, and relational analysis  
- **Power BI & DAX** – Data visualisation, KPI tracking, and dashboard creation  
- **Python (Jupyter Notebook)** – End-to-end machine learning workflow
- **Libraries:** `pandas`, `numpy`, `scikit-learn`, `seaborn`
- **Excel / CSV** – Dataset handling  

---

## Dataset
Source: Kaggle – Telco Customer Churn Dataset (~7,000 customers, 21 features) 

The dataset includes:
- Customer demographics (gender, senior citizen, etc.)
- Account information (tenure, contract type, payment method)
- Services (internet, phone, streaming)
- Churn status

---

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
- Churn rate by contract type & tenure distribution  
- Impact of monthly charges, payment methods, and services on churn
- Characteristics and demographics of churned customers  
   
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

Breaks down churn behaviour by monthly payments and tenure groups whilst considering customer information such as dependents, partner and senior citizens.

---

### Protection Services
<img width="534" height="319" alt="dashboard3" src="https://github.com/user-attachments/assets/32a76c88-25b7-4a04-b418-d1baec22d7f2" />

Identifies the effect of protection services on churn rate by billing method and contract type.

---

## Machine Learning Workflow (Python Extension)
To transition from descriptive insights to predictive power, I built a robust machine learning pipeline in Python.

### 1. Preprocessing Data
Using `Colomn Transformer` to preprocess the data:
- Split the dataset into stratified train/test sets to maintain class balance.
- Scaled numerical features (`tenure`, `MonthlyCharges`) using `StandardScaler`.
- Encoded categorical variables using `OneHotEncoder`.

### 2. Model Training & Hyperparameter Tuning
I evaluated three classification algorithms to identify the strongest baseline:
- **Logistic Regression** (Interpretable baseline)
- **Decision Tree** (Captures non-linear relationships)
- **Random Forest** (Ensemble method to reduce variance)

`GridSearchCV` was implemented to systematically tune hyperparameters (such as `n_estimators` and `max_depth`) across cross-validation folds to optimise model performance.

### 3. Precision-Recall Threshold Analysis
Because missing a churning customer (False Negative) is significantly more expensive to the telecom company than offering an incentive to a loyal customer (False Positive), a standard 0.5 classification threshold is suboptimal. I analysed the Precision, Recall and F1-scores and utilised the confusion matrix to tune the decision threshold, maximising the financial ROI of targeted marketing campaigns.

---

## Business Recommendations
- Promote month-to-month customers to switch to long-term contracts to reduce churn.  
- **Deploy the optimised machine learning model to automatically flag high-risk accounts weekly.**
- Offer targeted retention incentives for high-risk, high-charge, short-tenure customers flagged by the model.  
- Review pricing strategies for high-charge customers and offer bundled protection service packages.  

---

## What I Learned
- Writing efficient SQL queries for real-world datasets.
- Transforming raw data into actionable insights and building interactive dashboards in Power BI.
- Building robust, leak-free preprocessing pipelines with `scikit-learn`.
- Tuning classification machine learning algorithms using systematic grid search methods.
- **Thinking like a business analyst:** Optimising decision thresholds based on real business cost trade-offs rather than just chasing raw accuracy.

---

## Future Improvements
- Deploy the machine learning model as a REST API (using Flask or FastAPI).
- Automate the data pipeline to feed new database records directly into the ML model.
- Deploy dashboard online

