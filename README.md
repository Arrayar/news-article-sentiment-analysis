# Guardian News Article Sentiment Analysis

## Introduction

This project analyzes the sentiment of news articles from The Guardian API related to a specific search query (Narendra Modi). The goal was to understand the overall tone of the media coverage, identify key authors, and track trends over time. This end-to-end data project involved data extraction, cloud storage, SQL transformation, sentiment analysis, and visualization.

---

## Tech Stack

* **Programming Language:** Python
* **Key Python Libraries:** Pandas, TextBlob, Google Cloud Client
* **Data Extraction:** The Guardian API, Google Colab
* **Data Warehouse:** Google BigQuery
* **Data Transformation:** SQL
* **Data Visualization:** Google Looker Studio

---

## Project Pipeline

1.  **Data Extraction:** A Python script was written in Google Colab to fetch article metadata from The Guardian's public API. The script handled pagination to retrieve a comprehensive dataset.
2.  **Data Storage:** The raw, extracted data was loaded into Google BigQuery for robust storage and powerful querying capabilities.
3.  **Data Transformation:** An SQL query was used in BigQuery to clean and transform the data. This involved unnesting JSON data to extract author names and casting data to the correct types, creating an analysis-ready table.
4.  **Sentiment Analysis:** Using the `TextBlob` library, a sentiment analysis was performed on the article headlines to determine the polarity (positive/negative) and subjectivity. The results were uploaded back to BigQuery as a new, enriched table.
5.  **Visualization:** The final, cleaned datasets were connected to Google Looker Studio to create an interactive dashboard showcasing the key findings.

---

## Key Findings & Visualizations

### 1. Top Authors by Article Count
This chart shows the authors who have written the most articles on the topic.
![Top Authors Chart](Author count bar chart.png)

### 2. Sentiment of Headlines Over Time
This timeline shows the average sentiment (positive or negative) of the headlines each month, revealing trends in the tone of coverage.
![Sentiment Timeline Chart](sentiment_over_time.png)



---

## How to Reproduce
1. Clone this repository.
2. Register for a Guardian API key.
3. Set up a Google Cloud Project with BigQuery enabled.
4. Run the `.ipynb` notebook in a Google Colab environment, adding your API key and Project ID where required.
5. Run the `data_transformation.sql` query in BigQuery to clean the data.
6. Connect the final BigQuery tables to a visualization tool like Looker Studio.
