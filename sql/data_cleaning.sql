-- =========================================
-- File: data_cleaning.sql
-- Description: Cleaning, validating and standardizing dataset
-- =========================================

-- Ensures aggregation and calculation don’t break in SQL or Power BI
ALTER TABLE billing
ALTER COLUMN total_charges TYPE DECIMAL(7,2)

-- Ensuring no invalid customers included. Must have either a phone or internet service. Output gives 0
SELECT 
    COUNT(*) AS invalid_customers
FROM services
WHERE phone_service = FALSE
  AND internet_service = 'No';

-- Checking for NULL values: no NULL values found
SELECT 
    COUNT(CASE WHEN gender IS NULL THEN 1 END) AS gender,
    COUNT(CASE WHEN senior_citizen IS NULL THEN 1 END) AS senior_citizen,
    COUNT(CASE WHEN partner IS NULL THEN 1 END) AS partner,
	COUNT(CASE WHEN dependents IS NULL THEN 1 END) AS partner
FROM customers

-- Checking for duplicates: no duplicates found
SELECT customer_id, 
COUNT(*)
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1

-- Converting churn to binary values (1, 0) for efficient calculations
ALTER TABLE billing
ADD COLUMN churn_binary INT;
UPDATE billing
SET churn_binary = CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END

-- Setting contract values to only monthly and yearly
ALTER TABLE billing
ADD COLUMN contract_type VARCHAR(50);
UPDATE billing
SET contract_type = CASE WHEN contract = 'Month-to-month' THEN 
'Monthly' ELSE 'Yearly' END

-- Adding bins for tenure 
ALTER TABLE billing
ADD COLUMN tenure_bin VARCHAR(50);
UPDATE billing
SET tenure_bin = CASE
    WHEN tenure BETWEEN 0 AND 1 THEN 'Very Early (0-1 months)'
    WHEN tenure BETWEEN 2 AND 3 THEN 'Early (2-3 months)'
    WHEN tenure BETWEEN 4 AND 6 THEN 'Early-Mid (4-6 months)'
    WHEN tenure BETWEEN 7 AND 12 THEN 'Mid (7-12 months)'
    WHEN tenure BETWEEN 13 AND 24 THEN 'Established (13-24 months)'
    ELSE 'Loyal (25+ months)'
END

-- Adding bins for monthly charges
ALTER TABLE billing
ADD monthly_charge_bin VARCHAR(20)
 UPDATE billing
SET monthly_charge_bin =
  CASE
    WHEN monthly_charges < 40 THEN 'Low'
    WHEN monthly_charges < 55 THEN 'Below Avg'
    WHEN monthly_charges < 75 THEN 'Around Avg'
    WHEN monthly_charges < 95 THEN 'Above Avg'
    ELSE 'High'
  END;

