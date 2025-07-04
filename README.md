# 🏅 Tokyo Olympics Azure Data Engineering Project

This project demonstrates a complete end-to-end data pipeline using Microsoft Azure, built around the 2021 Tokyo Olympics dataset. It covers data ingestion, transformation, and analytics using Azure-native tools—focusing on scalable cloud-based data engineering practices.

---

## 📦 Dataset

**Source**: [Kaggle – 2021 Olympics in Tokyo](https://www.kaggle.com/datasets/arjunprasadsarkhel/2021-olympics-in-tokyo/data)

**Files Used:**
- `Athletes.csv`
- `Coaches.csv`
- `EntriesGender.csv`
- `Medals.csv`
- `Teams.csv`

---

## ☁️ Tools & Technologies

- **Azure Data Factory** – Orchestrated and ingested raw CSV data into Data Lake  
- **Azure Data Lake Storage Gen2** – Managed raw and curated data zones  
- **Azure Databricks** – Performed data cleaning, transformations, and joins using PySpark  
- **Azure Synapse Analytics** – Executed analytical queries at scale on curated datasets  

---

## 📊 Analytical Questions Answered

1. **How many male and female athletes participated per country?**  
   → From `EntriesGender.csv`, grouped by `Country` and `Gender`.

2. **Which countries won the most medals in each sport?**  
   → Analyzed from `Medals.csv`, grouped by `Country` and `Discipline`.

3. **Which athletes won the most medals in the Tokyo Olympics?**  
   → Aggregated from `Athletes.csv`, with medal data where applicable.

4. **Which countries had the most coaches per sport?**  
   → Summarized using `Coaches.csv`, grouped by `Discipline` and `Country`.

5. **Which sports had the most balanced gender representation?**  
   → Calculated using `EntriesGender.csv` by comparing male/female counts.

---

## 📁 Project Structure

```text
├── data/                 → Raw Kaggle datasets (CSV)
├── data_ingestion/       → ADF pipeline configs or descriptions
├── transformations/      → Databricks notebooks (PySpark)
├── synapse_queries/      → SQL scripts run on Synapse for analytics
├── visuals/              → (Optional) Chart screenshots or insights
