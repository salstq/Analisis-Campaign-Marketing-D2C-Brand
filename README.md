# Analisis Campaign Marketing D2C Brand

## Project Overview

This project analyzes marketing campaign performance for **SegarAlami**, a health and skincare Direct-to-Consumer (D2C) brand.

The objective is to evaluate campaign effectiveness, marketing channel performance, budget efficiency, and business growth trends using SQL and Power BI.

This project simulates a real-world marketing analytics workflow, combining SQL-based business analysis with interactive Power BI dashboards to support data-driven decision making.

### Tools Used

- SQL (SQLite)
- Power BI
- GitHub

---

## Acknowledgement

This project is adapted from a marketing analytics case study from the **Ngulik Data** learning program.

The dataset used in this repository is a synthetic (dummy) dataset created for portfolio and learning purposes. While the business case and analytical objectives are inspired by the original project, all SQL queries, data modeling, dashboard development, analysis, and recommendations were independently completed by the author.

---

## Business Problem

The marketing team wants to answer several key business questions:

- Which campaigns generate the highest revenue?
- Which marketing channels perform best?
- Which campaign types are most efficient?
- How does performance change over time?
- Which campaigns provide the highest ROAS?

---

## Dataset

| Detail | Information |
|----------|----------|
| Industry | Health & Skincare (D2C Brand) |
| Campaigns | 10 Marketing Campaigns |
| Channels | 6 Marketing Channels |
| Products | Multiple Product Categories |
| Daily Metrics | ~11,000 Records |
| Analysis Period | 2026 |

### Tables

- campaigns
- channels
- products
- campaign_products
- daily_metrics
  
---

## Database Schema

### ERD Design
![ERD Design](https://github.com/salstq/Analisis-Campaign-Marketing-D2C-Brand/blob/main/data/ERDDesign.png)

---

## SQL Business Questions

| No | Business Question |
|----|-------------------|
| 1 | Campaigns running in Q2 2026 |
| 2 | Total spend and revenue per campaign |
| 3 | Channel CTR and conversion rate |
| 4 | Monthly spending trend |
| 5 | Weekly campaign performance |
| 6 | Campaign ROAS evaluation |
| 7 | Channel performance segmentation |
| 8 | Campaign type efficiency |
| 9 | Top 3 campaigns by ROAS |
| 10 | Marketing performance summary |

---

## Analytical Approach

The analysis is structured into three main areas:

### 1. Campaign Performance Analysis

Evaluate campaign effectiveness using:

- Revenue
- Spend
- ROAS
- Campaign Status

**Objective:**

Identify campaigns that generate the highest return on marketing investment.

### 2. Channel Performance Analysis

Evaluate channel effectiveness using:

- CTR
- Conversion Rate
- Revenue Contribution
- ROAS
  
**Objective:**

Determine which marketing channels provide the highest business value.

### 3. Trend Analysis

Evaluate performance over time using:

- Monthly Revenue Trend
- Monthly Spend Trend
- Monthly ROAS Trend

**Objective:**

Understand seasonality patterns and long-term marketing performance.

---

## Power BI Dashboard

### Executive Overview

Features:

- Total Revenue
- Total Spend
- ROAS
- CTR
- Conversion Rate
- Revenue Trend

![Executive Overview](https://github.com/salstq/Analisis-Campaign-Marketing-D2C-Brand/blob/main/dashboard/ExecutiveOverview.png)

---

### Campaign Performance

Features:

- Revenue by Campaign
- ROAS by Campaign
- Revenue vs Spend
- Campaign Status

![Campaign Performance](https://github.com/salstq/Analisis-Campaign-Marketing-D2C-Brand/blob/main/dashboard/CampaignPerformance.png)

---

### Channel Performance

Features:

- Revenue by Channel
- CTR by Channel
- Conversion Rate by Channel
- Channel Segmentation

![Channel Performance](https://github.com/salstq/Analisis-Campaign-Marketing-D2C-Brand/blob/main/dashboard/ChannelPerformance.png)

---

### Trend Analysis

Features:

- Monthly Revenue Trend
- Monthly Spend Trend
- Monthly ROAS Trend

![Trend Analysis](https://github.com/salstq/Analisis-Campaign-Marketing-D2C-Brand/blob/main/dashboard/TrendAnalysis.png)

---

### Campaign Performance

- Healthy Living Campaign generated the highest revenue.
- Year End Glow achieved one of the highest ROAS values.
- New Product Launch showed the weakest performance and requires optimization.
- Conversion-focused campaigns generally outperformed awareness-focused campaigns in terms of ROAS.

### Channel Performance

- Email Marketing delivered the highest conversion rate.
- Google Ads generated strong revenue while maintaining efficient ROAS.
- Affiliate Marketing produced the lowest overall performance.
- High CTR does not always translate into high conversion rates, highlighting the importance of evaluating the full marketing funnel.

### Trend Analysis

- Revenue increased significantly during June–July and November–December.
- Q4 campaigns contributed the largest share of annual revenue.
- Increased spending generally resulted in higher revenue generation, though campaign efficiency varied across periods.

---

## Strategic Recommendations

### Campaign Strategy

- Increase investment in high-performing campaigns such as Healthy Living Campaign and Year End Glow.
- Review and optimize underperforming campaigns, particularly New Product Launch.
- Prioritize campaign types that consistently generate strong ROAS.

### Channel Strategy

- Allocate additional budget to Email Marketing due to its strong conversion performance.
- Continue leveraging Google Ads as a primary revenue driver.
- Reassess budget allocation for Affiliate Marketing due to lower efficiency.

### Budget Optimization

- Focus future spending on campaigns with proven profitability.
- Monitor campaign performance regularly through KPI dashboards.
- Use performance-based budget allocation instead of equal budget distribution across campaigns.

---

## SQL Concepts Demonstrated

- INNER JOIN
- GROUP BY
- ORDER BY
- Aggregate Functions
- CASE WHEN
- Common Table Expressions (CTE)
- Business KPI Calculations
- Multi-Table Analysis

---

## Skills Demonstrated

### Technical Skills

- SQL (SQLite)
- Data Cleaning
- Data Aggregation
- Joins
- CASE WHEN
- Common Table Expressions (CTE)
- Power BI
- DAX
- Data Modeling

### Analytical Skills

- Marketing Analytics
- KPI Analysis
- Business Intelligence
- Dashboard Development
- Data Visualization
- Insight Generation
- Business Recommendation Development

---

## Repository Structure

```text
marketing-campaign-analysis/
│
├── README.md
│
├── data/
│   ├── campaigns.csv
│   ├── channels.csv
│   ├── products.csv
│   ├── campaign_products.csv
│   ├── daily_metrics.csv
│   └── ERDDesign.png
│
├── sql/
│   ├── Q01_campaign_analysis.sql
│   ├── Q02_channel_analysis.sql
│   ├── ...
│
└── dashboard/
    ├── Marketing_Dashboard.pbix
    ├── executive_overview.png
    ├── campaign_performance.png
    ├── channel_performance.png
    └── trend_analysis.png

```

---

## Key Takeaway

This project demonstrates how marketing data can be transformed into actionable business insights using SQL and Power BI.

Rather than simply reporting campaign results, the analysis focuses on identifying the key drivers of marketing performance, channel effectiveness, budget efficiency, and revenue growth to support strategic business decisions.
