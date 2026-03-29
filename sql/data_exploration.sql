-- =========================================
-- File: data_exploration.sql
-- Description: Initial exploration of dataset 
-- NOTE: not all queries used in expoloration 
included
-- =========================================

-- Preview dataset
SELECT *
FROM billing 
JOIN customers USING (customer_id)
JOIN services USING (customer_id)

-- Gender distribution
SELECT gender,
   COUNT(*)
FROM customers
GROUP BY gender

-- Internet service distribution
SELECT internet_service,
COUNT(*)
FROM services 
GROUP BY internet_service

-- Paperless billing Count
 SELECT 
  COUNT(CASE WHEN paperless_billing = 'true' THEN 1 END)
FROM billing
  
-- Monthly charges range
SELECT
AVG(monthly_charges) as avg_month,
MAX(monthly_charges) as max_month,
MIN(monthly_charges) as min_month
FROM billing

-- Payment Method count by group
SELECT payment_method,
   COUNT(*)
FROM billing
GROUP BY  payment_method	

-- Total Charges range
SELECT 
MIN(total_charges) AS min,
MAX(total_charges) AS max,
AVG(total_charges) AS avg
FROM billing

-- Count per tenure group
SELECT 
    tenure,
    COUNT(*) AS count_per_tenure
FROM billing
GROUP BY tenure
ORDER BY count_per_tenure DESC;

-- Count per internet and phone service
SELECT 
    COUNT(CASE WHEN phone_service = 'true' THEN 1 END) AS PhoneService,
    COUNT(CASE WHEN multiple_lines = 'Yes' THEN 1 END) AS MultipleLines,
    COUNT(
    CASE 
        WHEN internet_service = 'DSL' 
          OR internet_service = 'Fiber optic' 
        THEN 1 
    END) AS InternetService,
	SUM(CASE 
            WHEN phone_service = 'true' AND multiple_lines = 'Yes' THEN 1 
            ELSE 0 
        END) AS phone_and_multiple,
	SUM(CASE 
            WHEN phone_service = 'true' AND internet_service <> 'No' THEN 1 
            ELSE 0 
        END) AS phone_and_internet,
	SUM(CASE 
            WHEN multiple_lines = 'Yes' AND internet_service <> 'No' THEN 1 
            ELSE 0 
        END) AS mutiplelines_and_internet
FROM services

-- Count per protection service
SELECT 
    COUNT(CASE WHEN online_security = 'Yes' THEN 1 END) AS online_security,
    COUNT(CASE WHEN online_backup = 'Yes' THEN 1 END) AS online_backup,
	COUNT(CASE WHEN device_protection = 'Yes' THEN 1 END) AS device_protection,
	COUNT(CASE WHEN tech_support = 'Yes' THEN 1 END) AS tech_support,  
	SUM(CASE 
            WHEN online_security = 'Yes' AND online_backup = 'Yes' THEN 1 
            ELSE 0 
        END) AS secutrity_and_backup,
	SUM(CASE 
            WHEN online_security = 'Yes' AND device_protection = 'Yes' THEN 1 
            ELSE 0 
        END) AS security_and_protection,
	SUM(CASE 
            WHEN online_security = 'Yes' AND online_backup = 'Yes'
			AND device_protection = 'Yes' THEN 1 
            ELSE 0 
        END) AS security_backup_protection,
		SUM(CASE 
            WHEN online_security = 'Yes' AND tech_support = 'Yes' THEN 1 
            ELSE 0 

