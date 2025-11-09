Retail Sales Analysis – Business Insights Report

This project provides a complete business intelligence walkthrough of a retail dataset, moving from raw data → insights → customer value and loyalty analysis.
All visuals referenced below are stored in:

assets/


Each figure is placed exactly where the reader needs it for understanding.

1. Project Overview

This analysis answers core business questions:

Who are our most valuable customers?

Which product categories drive revenue?

How do age and gender influence spending?

Are there seasonal trends in revenue?

Which customer segments require retention, nurturing, or re-engagement?

The goal is to turn sales records into actionable retail insights for marketing, merchandising, and customer lifecycle strategy.

2. Data Preparation

Before analysis, the dataset was cleaned and structured to ensure reliability:

✅ 2.1 Column standardization & type correction

Standardized all column names

Converted date into proper datetime format

Verified numeric fields (age, quantity, price, totals)

✅ 2.2 Data profiling

A full profiling scan confirmed:

No missing values

No duplicates

Balanced distributions across key variables

Insert visual: Data Overview
assets/dataset overview.png

Insert visual: Skim Summary
assets/skimpy report.png

This established a trustworthy foundation for exploration.

3. Exploratory Analysis
3.1 Revenue Over Time (Daily & Monthly)

Purpose: Identify peaks, troughs, and seasonality.

Daily Revenue Trend
assets/fig-01-revenue-over-time.png

Daily Revenue (enhanced)
assets/fig-02-revenue-over-time.png

These show high volatility due to daily timestamps.

✅ Monthly aggregation for clear patterns

Monthly Revenue with Rolling 3-Month Average
assets/fig-07-revenue-over-Age Group & Gender.png
(Your file structure uses combined age/gender names — we maintain original name.)

Business insight:

Highest peaks in Feb and May

Lowest volume in Sep

Midyear months show consistent performance

3.2 Product Pricing and Category Behavior
✅ Overall Price Distribution

assets/fig-04-price-per-unit-distribution.png

✅ Price Frequency by Category

assets/fig-05-Price per Product-Frequency-.png

Insights:

Only five price points are used repeatedly (25, 30, 50, 300, 500)

Pricing alone does not explain behavior; must combine with demographics

Category-level pricing ladders show “good–better–best” patterns

3.3 Customer Demographics
✅ Age Distribution

assets/fig-06-Age-distribution.png

Used to create customer segments:

Emerging Shoppers (18–25)

Young Professionals (26–35)

Prime Spenders (36–45)

Established Buyers (46–55)

Loyal Customers (56–65)

Senior Shoppers (66+)

These segments power later revenue and RFM analysis.

4. Deep-Dive Revenue & Behavioral Analysis
4.1 Revenue by Gender

assets/fig-03-revenue-by-gender.png

Female buyers show higher revenue and frequency overall.

4.2 Revenue by Age Group & Gender
✅ Combined demographic revenue

assets/fig-08-Revenue-over-Age & Gender.png

✅ Revenue by Age Group (Product Category Cross)

assets/fig-10-RFM Score-over-Age Group & Gender.png

Insights:

Young Professionals (26–35) are the strongest spenders

Prime Spenders (36–45) show stable purchasing across genders

Emerging Shoppers and Senior Shoppers spend significantly less

Females consistently contribute more revenue across all age bands

5. Customer Behavior & Loyalty (RFM Analysis)

RFM = Recency, Frequency, Monetary
Used to measure loyalty and value:

Recency: How recently a customer purchased

Frequency: How often they purchase

Monetary: How much they spend

5.1 Customer Segment Counts by Age Group

assets/fig-09-Segments-over-age group.png

Shows how many customers fall into:

Champions

Loyal Customers

Potential Loyalists

At Risk

Lost Customers

5.2 Average RFM Score by Age & Gender

assets/fig-11-RFM Score-Results.png

Insights:

Strongest customer quality appears in Females aged 26–45

Older customers show high spend but weakening recency (churn warning)

Emerging shoppers show low recency and low spend—early in lifecycle

6. Business Insights (What It Means)
✅ Most Valuable Customer Segment

Female customers aged 26–45

High-frequency, high-value, high loyalty

✅ Seasonal Trend Opportunities

Peak months offer strong ROI for targeted campaigns

September is an opportunity month for promotions or demand stimulation

✅ Product Strategy

All three major categories contribute evenly; no single dependency

Customers respond well to clear price tiers

✅ Lifecycle Strategy

“Established Buyers” and “Loyal Customers” in older groups show declining recency
→ ideal for re-engagement campaigns

Younger shoppers need conversion journeys to become repeat buyers

✅ Marketing Strategy

Personalized offers to key female age bands

Bundle or premium-price promotions for male shoppers (larger but less frequent purchases)

7. Recommendations
✅ 1. Loyalty & Retention

Reward Champions

Re-activate declining older segments

Convert younger shoppers into repeat buyers with onboarding offers

✅ 2. Merchandising

Strengthen popular price points (25, 50, 500)

Validate category inventory levels against revenue contributions

✅ 3. Promotional Calendar

Target peak buying windows (Feb, May)

Test promotional interventions in low months (Sep)

✅ 4. Predictive Next Steps

Run CLV (Customer Lifetime Value) modeling

Build category-level forecasting models

Add channel/region features for operational insights

8. Assets Directory Summary

For ease of integration, here are all visuals referenced:

Visual Purpose	Filename
Data Overview	dataset overview.png
Skimpy Profile	skimpy report.png
Daily Revenue	fig-01-revenue-over-time.png
Daily Revenue Enhanced	fig-02-revenue-over-time.png
Revenue by Gender	fig-03-revenue-by-gender.png
Price Distribution	fig-04-price-per-unit-distribution.png
Price Frequency by Category	fig-05-Price per Product-Frequency-.png
Age Distribution	fig-06-Age-distribution.png
Monthly Revenue + Age/Gender	fig-07-revenue-over-Age Group & Gender.png
Revenue by Age & Gender	fig-08-Revenue-over-Age & Gender.png
Customer Segments by Age	fig-09-Segments-over-age group.png
RFM Score by Age/Gender	fig-10-RFM Score-over-Age Group & Gender.png
RFM Score Results	fig-11-RFM Score-Results.png