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

1. **Which disciplines are represented by athletes from Malaysia?**  
   → Queried from `Athletes` table by filtering `Country = 'Malaysia'`.

2. **How many coaches are there per country?**  
   → Aggregated from `Coaches` table using `COUNT(*) GROUP BY Country`.

3. **Which disciplines have more female than male participants?**  
   → Analyzed from `EntriesGender` table by comparing `Female > Male`.

4. **Which countries have both athletes and coaches in the same discipline?**  
   → Identified via join between `Athletes` and `Coaches` on `Country` and `Discipline`.

5. **Which medal-winning countries had teams in Football?**  
   → Joined `Medals` and `Teams` tables where `Discipline = 'Football'`.

---

## 📁 Project Structure

```text
├── data/                 → Raw Kaggle datasets (CSV)
├── data_ingestion/       → ADF pipeline configs or exported template (JSON)
├── transformations/      → Databricks notebooks (PySpark)
├── synapse_queries/      → SQL scripts for analysis
├── visuals/              → (Optional) Chart screenshots or dashboard exports
