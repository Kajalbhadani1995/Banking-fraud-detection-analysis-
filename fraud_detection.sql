create database fraud_detection;
use fraud_detection;
show tables;
select * from fraud_detection_dataset;
select * from fraud_detection_cleaned;
describe fraud_detection_cleaned;
describe fraud_detection_dataset;

-- creating a column 

alter table fraud_detection_cleaned
add column customer_type varchar(30);

set SQL_SAFE_UPDATES = 0 ;
set SQL_SAFE_UPDATES = 1 ;
update fraud_detection_cleaned 
set customer_type = 
	case
		when account_age_months between 0 and 6 
then 'New Customer'
		when account_age_months between 7 and 24
then 'Regular Customer'
		else 'Loyal'
	end;
        
##  Business Problem Questions

--  Which transactions show abnormal behavior based on amount, time, and frequency?
# Helps identify suspicious activity early.

select * from fraud_detection_cleaned
where transaction_amount > 50000
and transaction_time between "00:00:00" and "05:00:00";

select customer_id,  count(*)
as txn_count
from fraud_detection_cleaned
group by customer_id, transaction_date 
having count(*) >3; 

--  What percentage of total transactions fall under high-risk category?
# Helps management understand overall risk exposure.

select round((sum(case when transaction_risk = "High Risk" then 1 else 0 end)/ count(*))* 100,2 )
as high_risk_percentage from fraud_detection_cleaned;

--   Which customer type (New, Regular, Loyal) contributes most to high-risk transactions?
# Helps decide where stricter controls are needed.

select customer_type, count(*) as higher_risk_transaction
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by customer_type
order by higher_risk_transaction desc;

--  Do new accounts (low account tenure) show higher fraud risk compared to older accounts?
# Validates risk assumptions.

select customer_type, count(*) as higher_risk_transaction
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by customer_type
order by higher_risk_transaction desc;

--  At what transaction amount range does fraud risk increase significantly?
# Helps set alert thresholds.

-- Which payment methods are associated with higher fraud risk?
# Supports payment-level security decisions.

select payment_method, count(*) as higher_risk_transaction
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by payment_method
order by higher_risk_transaction desc;

--  Which cities show unusually high concentration of risky transactions?
#Helps identify geographic risk patterns.

select city, count(*) as higher_risk_transaction
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by city
order by (higher_risk_transaction) desc;

--  Which customers repeatedly appear in high-risk transactions?
# Helps prioritize investigation.

select customer_id, count(*) as higher_risk_transaction
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by customer_id
having count(*) > 1
order by (higher_risk_transaction) desc;

--  Are certain age groups more vulnerable to risky transaction behavior?
# Helps in behavioral analysis and awareness.

select age_group, count(*) as risky_transactions_beaviour
from fraud_detection_cleaned
where transaction_risk = 'High Risk'
group by age_group
order by risky_transactions_beaviour desc;

--  are there customer performing multiple transactions within a short time period?

select customer_id, transaction_date, count(*) as transaction_count
from fraud_detection_cleaned
group by customer_id,transaction_date
having count(*) > 1
order by transaction_count desc;

-- at which time of day do most suspicious transaction occur?

select hour(transaction_time) as transaction_hour, count(*) as suspicious_transaction
from fraud_detection_cleaned  
where transaction_risk = 'High Risk'
group by transaction_hour
order by suspicious_transaction desc;