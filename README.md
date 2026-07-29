# 🛒 Olist E-Commerce Data Pipeline & Analytics Solution

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python](https://img.shields.io/badge/Python-3.10%2B-blue)](https://www.python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)](https://www.mysql.com/)
[![Power BI](https://img.shields.io/badge/Power_BI-Desktop-yellow)](https://powerbi.microsoft.com/)

An end-to-end data analytics and pipeline solution analyzing over **100,000+ real-world Brazilian e-commerce orders** from Olist. This project transforms raw relational data into actionable business intelligence covering logistics bottlenecks, payment preferences, seller performance, and delivery SLA impacts on customer satisfaction.

---

## 📌 Executive Summary & Key Insights

* **Delivery vs. Review Scores:** Orders delivered past the estimated delivery date experienced a **~40% drop in average review score**, confirming fulfillment delay as the primary driver of negative customer feedback.
* **Payment Preference:** Over **73% of transactions** were completed via credit card, with higher installment counts directly correlating with increased Average Order Value (AOV).
* **Regional Logistics Bottlenecks:** Concentrated seller hubs in specific states faced severe cross-state shipping latency, identifying prime opportunities for regional fulfillment centers.

---

## 🛠️ Tech Stack & Architecture

* **Database & Querying:** MySQL (Relational Data Modeling, CTEs, Window Functions, Complex Joins)
* **Data Processing & EDA:** Python (`pandas`, `numpy`, `matplotlib`, `seaborn`)
* **Interactive Visualization:** Power BI Desktop (`DAX`, Star Schema Data Modeling)
* **Environment & Security:** `python-dotenv`, `.gitignore` credential masking

---

## 📊 Dashboard Overview

> *Check out the interactive report visuals located in the [`visuals/`](./visuals) directory!*

* **Executive Overview:** High-level KPIs including total revenue, order volume, average review score, and freight cost breakdown.
* **Logistics & Delivery Operations:** SLA breach analysis, delivery delay tracking, and state-wise logistics efficiency.
* **Customer & Payment Analytics:** Installment behavior, payment method distribution, and geographic customer clusters.

---

## 📁 Repository Structure

```text
├── dashboard/        # Interactive Power BI report (.pbix)
├── data/             # Raw and cleaned dataset files (.csv)
├── notebook/         # Jupyter Notebooks for EDA and data cleaning
├── sql/              # Analytical SQL queries and schema scripts
├── visuals/          # High-resolution dashboard screenshots & charts
├── .env.example      # Environment variables configuration template
├── .gitignore        # Git ignore rules for credentials & unwanted files
├── LICENSE           # MIT License
└── README.md         # Project documentation
