-- =========================================
-- File: data_analysis.sql
-- Description: Answer business questions and generate insights
-- =========================================

-- Monthly billing (43%)  much higher churn rate than yearly billing (7%)
SELECT contract_type,
ROUND(SUM(churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM billing
GROUP BY contract_type

-- As expected, earlier bins have highest churn rates while the loyal bin has the lowest.
-- Very Early customers have significantly higher churn rate of roughly 60%, the rate decreases linearly the longer the customer stays
SELECT tenure_bin,
ROUND(SUM(churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM billing
GROUP BY tenure_bin
ORDER BY churn_rate

-- Having dependents has the lowest churn rate (5%)
-- Senior citizens have low churn rate (7%)
-- Partner has low churn rate (9%)
-- Female and males have same churn rate (13%)
SELECT
SUM(b.churn_binary) FILTER (WHERE c.senior_citizen = TRUE) * 100.0
/ COUNT(c.senior_citizen) AS senior_citizen,
SUM(b.churn_binary) FILTER (WHERE c.senior_citizen = FAlSE) * 100.0
/ COUNT(c.senior_citizen) AS not_senior_citizen,
SUM(b.churn_binary) FILTER (WHERE c.partner = TRUE) * 100.0
/ COUNT(c.partner) AS partner,
SUM(b.churn_binary) FILTER (WHERE c.partner = FALSE) * 100.0
/ COUNT(c.partner) AS no_partner,
SUM(b.churn_binary) FILTER (WHERE c.dependents = TRUE) * 100.0
/ COUNT(c.dependents) AS dependents,
SUM(b.churn_binary) FILTER (WHERE c.dependents = FALSE) * 100.0
/ COUNT(c.dependents) AS no_dependents,
SUM(b.churn_binary) FILTER (WHERE c.gender = 'Female') * 100.0
/ COUNT(c.gender) AS female,
SUM(b.churn_binary) FILTER (WHERE c.gender = 'Male') * 100.0
/ COUNT(c.gender) AS male
FROM customers as c
LEFT JOIN billing as b
ON c.customer_id = b.customer_id

-- Electronic check has highest churn rate (45%)
-- Other methods have around same churn rate (15-19%)
SELECT payment_method,
ROUND(SUM(churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM billing
GROUP BY payment_method

-- From protection services, tech support and online security have 4% churn rate while online backup and device protection have 7% churn rate
-- Customers having all protection services have an extremely low churn rate of 0.4%
-- Overall each protection service has low churn rate
SELECT 
SUM(b.churn_binary) FILTER (WHERE s.online_security = 'Yes') * 100.0
/ COUNT(s.online_security) AS online_security,
SUM(b.churn_binary) FILTER (WHERE s.online_backup = 'Yes') * 100.0
/ COUNT(s.online_backup) AS online_backup,
SUM(b.churn_binary) FILTER (WHERE s.device_protection = 'Yes') * 100.0
/ COUNT(s.device_protection) AS device_protection,
SUM(b.churn_binary) FILTER (WHERE s.tech_support = 'Yes') * 100.0
/ COUNT(s.tech_support) AS tech_support,
SUM(b.churn_binary) FILTER (WHERE s.online_security = 'Yes' AND s.online_backup = 'Yes'
			AND s.device_protection = 'Yes' AND s.tech_support = 'Yes' ) * 100.0
/ COUNT(s.tech_support) AS all_protection_serv
FROM services as s
LEFT JOIN billing as b
ON s.customer_id = b.customer_id

-- Churn rate seems to increase linearly with monthly charges
-- “Low” bin has lowest charge rate of 12% while “Above Avg” bin has the highest churn rate of 36%
SELECT monthly_charge_bin,
ROUND(SUM(churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM billing
GROUP BY monthly_charge_bin

-- Paperless billing has 34% churn rate, 16% if not
SELECT paperless_billing,
ROUND(SUM(churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM billing
GROUP BY paperless_billing

-- Both streaming tv and streaming movie services have same churn rate roughly 11%
SELECT 
SUM(b.churn_binary) FILTER (WHERE s.streaming_tv = 'Yes') * 100.0
/ COUNT(s.streaming_tv) AS streaming_tv,
SUM(b.churn_binary) FILTER (WHERE s.streaming_movies = 'Yes') * 100.0
/ COUNT(s.streaming_movies) AS streaming_movie
FROM services as s
LEFT JOIN billing as b
ON s.customer_id = b.customer_id

-- Fiber Optic  internet service has high churn rate (42%)
-- DSL has churn rate 19%
-- No internet has low churn rate of 7%
SELECT internet_service,
ROUND(SUM(b.churn_binary) * 100.0/COUNT(*),2) AS churn_rate
FROM services as s
LEFT JOIN billing as b
ON s.customer_id = b.customer_id
GROUP BY internet_service

-- Phone service has 24% churn rate, multiple lines has churn rate of 12%
SELECT 
SUM(churn_binary) FILTER(WHERE phone_service = TRUE) * 100.0
/ COUNT(phone_service) AS phone_service,
SUM(churn_binary) FILTER(WHERE multiple_lines = 'Yes') * 100.0
/ COUNT(phone_service) AS multiple_lines
FROM services as s
LEFT JOIN billing as b
ON s.customer_id = b.customer_id

-- 139k Revenue lost 
SELECT
SUM(monthly_charges) AS lost_revenue
FROM billing
WHERE churn_binary = 1

-- Churn characteristics: average 74 monthly charges and 18 tenure 
SELECT
AVG(monthly_charges) AS monthly_charges,
AVG(tenure) AS tenure
FROM billing
WHERE churn_binary = 1

