# marketing-data-insights
This project aims to solve a business problem where marketing data is analysed to provide helpful insights regarding marketing strategies and product related focus. It provides information on how to retain customers and imrpove overall experience. 


SQL Data Transformations
dim_customers.sql: Extracts and cleans customer data, joining it with geography information to create a normalized dimension for demographic analysis.

dim_products.sql: Standardizes product details and handles price bucketing to allow for easier filtering in reports.

fact_customer_journey.sql: A cleaning script that identifies and fixes data quality issues, such as missing durations, to accurately track the path from "View" to "Purchase".

fact_engagement_data.sql: Standardizes social media metrics (likes, comments, views) to ensure engagement can be compared across different content types.

fact_customer_reviews.sql: Cleans raw review text by removing double spaces and special characters, preparing it for high-quality sentiment analysis.


sentimentAnalysis.py: The core ETL script that uses the nltk.vader library to calculate sentiment scores and categories. It adds intelligence to the raw text by quantifying customer emotions.


Power BI & Insights
Marketing_Analytics_Dashboard.pbix: The master file containing the Star Schema data model, DAX measures (like Conversion Rate), and interactive visualizations.

conversion_rate_by_sentiment.png: An insight image showing how different sentiment buckets affect the conversion rate, highlighting if happy customers buy more.

customer_journey_funnel.png: A visual representation of the sales funnel, identifying exactly where customers drop off before purchasing.

engagement_vs_sentiment.png: A scatter plot or trend line comparing social media engagement against review sentiment to see if high buzz correlates with positive feelings.


fact_customer_reviews_with_sentiment.csv: The output of the Python script; this file serves as the "Enriched" data source that is loaded into Power BI.
