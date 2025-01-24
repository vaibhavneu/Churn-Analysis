# Customer Churn Analysis

## Overview
This project analyzes customer churn using SQL for data processing and Tableau for visualization. 
The goal is to identify high-risk customer segments and provide actionable insights for retention strategies.

## Dataset
- **Source**: [Telco Customer Churn Dataset on Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Fields**: Includes `gender`, `Contract`, `tenure`, `MonthlyCharges`, `TotalCharges`, and `Churn`.

## Process
1. **Data Cleaning and Analysis**:
   - SQL queries were used to calculate:
     - Overall churn rate.
     - Churn by gender.
     - Churn by contract type.
     - Churn by gender and contract type.
     - Churn by tenure group.
2. **Visualization**:
   - Tableau was used to create an interactive dashboard highlighting:
     - Key churn trends.
     - High-risk customer groups.

## Insights
- Customers on **month-to-month contracts** have the highest churn rate (~42%).
- Female customers churn slightly more than males (~26.92% vs. ~26.16%).
- Customers with less than 12 months of tenure are most at risk of churning.

## Files in This Repository
- `churn_analysis.sql`: Contains all SQL queries used for analysis.
- `Customer_Churn_Analysis.twbx`: Tableau dashboard with visualizations.
- (Optional) `WA_Fn-UseC_-Telco-Customer-Churn.csv`: The dataset used (if allowed).
- (Optional) Exported images: Screenshots of key visualizations.

## How to Use
1. Open `churn_analysis.sql` in any SQL environment to replicate the analysis.
2. Open `Customer_Churn_Analysis.twbx` in Tableau to explore the dashboard.

## Acknowledgments
Special thanks to [Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) for providing the dataset.
