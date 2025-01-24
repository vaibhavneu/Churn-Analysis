-- Customer Churn Analysis Project
-- This project analyzes customer churn rates using SQL queries.
-- The insights were visualized using Tableau for better understanding.

-- Dataset: WA_Fn-UseC_-Telco-Customer-Churn.csv
-- Fields include: gender, Contract, tenure, MonthlyCharges, TotalCharges, Churn, etc.



-- Query 1: Calculate the overall churn rate in the dataset.

SELECT 
    COUNT(*) AS Total_Customers, -- Total number of customers
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers, -- Number of churned customers
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate -- Percentage of churned customers
FROM "WA_Fn-UseC_-Telco-Customer-Churn";




-- Query 2: Analyze churn rates separately for male and female customers.
SELECT 
    gender,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate
FROM "WA_Fn-UseC_-Telco-Customer-Churn"
GROUP BY gender;


-- Query 3: Analyze churn rates based on the type of contract.
SELECT 
    Contract,
    COUNT(*) AS Total_Customers, -- Total customers by contract type
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers, -- Churned customers by contract type
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate -- Percentage churn by contract type
FROM "WA_Fn-UseC_-Telco-Customer-Churn"
GROUP BY Contract;


-- Query 4: Combine gender and contract type to analyze detailed churn rates.
SELECT 
    gender,
    Contract,
    COUNT(*) AS Total_Customers, -- Total customers by gender and contract type
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers, -- Churned customers by gender and contract type
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate -- Percentage churn
FROM "WA_Fn-UseC_-Telco-Customer-Churn"
GROUP BY gender, Contract;



-- Query 5: Analyze churn rates based on customer tenure grouped into ranges.
SELECT 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
        WHEN tenure BETWEEN 25 AND 36 THEN '25-36 Months'
        ELSE '36+ Months'
    END AS Tenure_Group, -- Categorized tenure ranges
    COUNT(*) AS Total_Customers, -- Total customers in each tenure group
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customers, -- Churned customers in each group
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Churn_Rate -- Percentage churn
FROM "WA_Fn-UseC_-Telco-Customer-Churn"
GROUP BY Tenure_Group;


