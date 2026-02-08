# Banking-fraud-detection-analysis| Power BI | MySQL | Python

Built a Banking Fraud Detection project to analyze transaction patterns, identify high-risk activities, and uncover suspicious customer behavior using SQL, Python, and Power BI. The project focuses on detecting fraud trends based on transaction amount, payment method, customer demographics, and transaction timing to help improve financial risk monitoring and decision-making.

## Business Questions 

* Which transactions show abnormal behavior based on amount, time, and frequency?
* What percentage of total transactions fall under high-risk category?
* at which time of day do most suspicious transaction occur?
* Which customer type (New, Regular, Loyal) contributes most to high-risk transactions?
* Do new accounts (low account tenure) show higher fraud risk compared to older accounts?
* Which payment methods are associated with higher fraud risk?
* Which cities show unusually high concentration of risky transactions?
* Which customers repeatedly appear in high-risk transactions?
* Are certain age groups more vulnerable to risky transaction behavior?

## End-to-End Banking Fraud Detection Analysis Using SQL, Python, and Power BI

* I created a database and Imported the datadet in MySQL
* Connected that database to python pandas using PyMySQL.

     #### Data Cleaning & Transformation 

     * conveted Column names from uppercase to Lowercase.
     * converted date column from object dtype to Datetime dtype.
     * converted time column from object dtype to Tume dtype. 
     * created column age_group.
     * created logical column using def function in pandas.
     
* After cleaning and transformation went back to MySQL using sqlalchemy and PyMySQL.
* Wrote Quries in MySQL to solve the business problems. 


## Dashboard | Power BI

![image alt](https://github.com/Kajalbhadani1995/Banking-fraud-detection-analysis-/blob/main/Banking%20fraud%20decetion%20analysis.png)

## 🔑 Key Findings & Insights

* A total of 482 high-risk transactions were identified, involving approximately $31M high-risk transaction amount, indicating significant potential fraud exposure.
* UPI payment method shows the highest high-risk transaction amount 14M, making it the most fraud-prone payment channel.
* Mobile devices contribute nearly 79% of risky transactions, suggesting higher fraud activity through mobile platforms.
* Loyal customers account for the highest proportion of risky transactions 62.15%, indicating fraud is not limited to new users and may involve account takeover or misuse.
* Female customers slightly contribute more to risky transactions 51.21% compared to male customers.
* Senior and middle-aged customer groups contribute the highest high-risk transaction amounts, suggesting higher fraud impact among financially active customers.
* Certain cities such as Chennai and Mumbai show higher concentrations of high-risk transaction amounts, highlighting possible geographic fraud patterns.
* Risky transactions show fluctuations throughout the year, with noticeable spikes towards the end of the year, indicating seasonal fraud trends.

## 📌 Recommendations

* Strengthen fraud monitoring and security protocols specifically for UPI transactions, including real-time fraud detection alerts.
* Implement advanced authentication and monitoring mechanisms for mobile device transactions such as multi-factor authentication and device fingerprinting.
* Conduct deeper fraud behavior analysis on loyal customers, as high transaction privileges may increase fraud risk through account compromise.
* Deploy location-based fraud detection strategies in high-risk cities to monitor suspicious geographic transaction clusters.
* Introduce targeted fraud awareness campaigns and transaction verification processes for senior and middle-aged customers.
* Increase fraud monitoring during high-risk seasonal periods, especially towards the end of the year when fraud attempts tend to increase.
* Develop predictive fraud detection models to proactively identify suspicious transactions before financial loss occurs.

## 🛠 Skills & Tools Used

* Python
* Pandas
* SQL (MySQL
* Power BI
* DAX
* Data Cleaning & Transformation
* Fraud Risk Analysis
* Business Insight Generation
* Data Visualization & Dashboard Design

 ## 🔗 Links and Contacts

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/me?trk=p_mwlite_feed-secondary_nav)
[![Github](https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Kajalbhadani1995)

