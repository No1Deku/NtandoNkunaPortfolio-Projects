🛒 Retail Sales Analysis
SQL-Driven Insights for Revenue Growth, Customer Strategy, and Loyalty Optimization

This project transforms raw retail transaction data into business-ready insights about customer behavior, product performance, and loyalty patterns.
It combines SQL analysis, visual evidence, and data storytelling to answer the key question every stakeholder asks:

“So what? How does this analysis help the business grow?”

📂 Project Structure
📁 retail-sales-analysis
│── README.md
│── Exploratory_Analysis.ipynb        # Full analysis notebook
│── /assets                           # All visuals referenced in this report
│── /sql
│     ├── 01_data_preparation.sql
│     ├── 02_revenue_analysis.sql
│     ├── 03_customer_segments.sql
│     ├── 04_rfm_loyalty_scoring.sql

🔎 1. Background & Overview

Retail businesses require a clear understanding of:

Who their most valuable customers are

How different demographic segments behave

Which products and price points drive revenue

Where churn risk is emerging

When seasonal spending peaks or declines

This project analyzes a retail dataset containing customer demographics, product information, transaction records, and timestamps to generate insights that support:

✅ Revenue forecasting
✅ Targeted marketing
✅ Merchandising and pricing decisions
✅ Customer retention and loyalty management

The entire workflow is SQL-driven, with visuals created from query outputs.

🗂️ 2. Data Structure Overview

The project uses the following core entities:

Entity	Key Columns	Purpose
Customers	customer_id, age, gender	Demographic segmentation
Orders	order_id, date, quantity, revenue	Sales and behavior tracking
Products	product_id, category, price	Product-level analysis
RFM Table	recency, frequency, monetary	Customer loyalty scoring

(Add ERD image once ready — recommended for maximum clarity.)

📊 3. Executive Summary

This analysis reveals five high-impact commercial insights:

Female customers aged 26–45 are the highest-value segment in both revenue and loyalty.

February and May consistently produce revenue spikes, while September is the weakest month.

Price alone does not determine purchasing behavior; product category structure matters more.

Older customers spend more but show declining recency, signaling churn risk.

Younger customers buy less frequently but show strong long-term growth potential.

These insights inform merchandising, lifecycle marketing, seasonal promotion planning, and loyalty strategy.

🔍 4. Insights Deep Dive

Each subsection includes a description, quantified insight, and supporting visual from /assets.

📈 4.1 Revenue Over Time

Visuals:
fig-01-revenue-over-time.png
fig-02-revenue-over-time.png
fig-07-revenue-over-age group & gender.png

What we found:
Revenue peaks strongly in February and May, with September as the lowest-performing month.

Impact:

Peak months outperform average revenue by 18%+

September underperforms by 12%+

Why it matters:
These patterns guide inventory planning, staffing, and promotional calendar design.

💰 4.2 Price and Product Performance

Visuals:
fig-04-price-per-unit-distribution.png
fig-05-Price per Product-Frequency-.png

What we found:
The store uses five dominant price points across categories.
No single price point drives purchasing behavior.

Impact:

Category “value ladders” are built intentionally

Clear upsell opportunities exist

Categories contribute evenly to revenue

Why it matters:
Retailers can optimize bundles, add-on sales, and entry-level products.

🧑‍🤝‍🧑 4.3 Customer Demographics

Visual:
fig-06-age-distribution.png

What we found:
Most customers are aged 26–45.

Impact:
This group contributes more than 50% of yearly revenue.

Why it matters:
This segment should drive marketing spend and retention strategy.

👥 4.4 Revenue by Gender & Age

Visuals:
fig-03-revenue-by-gender.png
fig-08-Revenue-over-Age & Gender.png

What we found:
Females spend more and buy more often across every age group.

Impact:
Female customers contribute slightly over half of total revenue.

Why it matters:
Tailored promotions and loyalty offerings for female shoppers yield strong ROI.

🏅 4.5 Customer Loyalty (RFM Analysis)

Visuals:
fig-09-Segments-over-age group.png
fig-11-RFM Score-Results.png

What we found:

Top loyalty segment: Females aged 26–45

High spend, low recency: Older customers

Low frequency, high potential: Younger customers

Impact:
Clear opportunities exist for retention, reactivation, and onboarding campaigns.

Why it matters:
RFM segmentation helps the business protect recurring revenue while identifying growth areas.

✅ 5. Business Recommendations
🎁 5.1 Loyalty & Retention

Invest in special rewards for top female segments (26–45).

Launch win-back campaigns for older customers showing declining recency.

Build beginner purchase journeys for younger age groups.

🛒 5.2 Merchandising & Pricing

Increase inventory depth around high-traction price points.

Maintain evenly balanced category representation.

Use bundle strategies to encourage progression up the value ladder.

📅 5.3 Seasonal Strategy

Amplify promotions during February and May revenue peaks.

Test creative offers in September to lift performance.

Use seasonality insights for staffing, buying, and budgeting decisions.

🔮 5.4 Future Enhancements

Customer Lifetime Value (CLV) analytics

Category-level demand forecasting

Regional segmentation once location data is available

🖼️ 6. Visual Assets Reference
Purpose	File
Dataset Overview	dataset overview.png
Profiling Report	skimpy report.png
Daily Revenue	fig-01-revenue-over-time.png
Enhanced Revenue	fig-02-revenue-over-time.png
Revenue by Gender	fig-03-revenue-by-gender.png
Price Distribution	fig-04-price-per-unit-distribution.png
Price Frequency	fig-05-Price per Product-Frequency-.png
Age Distribution	fig-06-Age-distribution.png
Monthly Revenue	fig-07-revenue-over-Age Group & Gender.png
Age × Gender Revenue	fig-08-Revenue-over-Age & Gender.png
RFM Segments	fig-09-Segments-over-age group.png
RFM Scores	fig-11-RFM Score-Results.png
🧠 7. Lessons Learned

High-quality SQL workflow improves both insight clarity and reproducibility.

Visuals must reinforce business value, not overwhelm the narrative.

Strong segmentation unlocks precise, actionable recommendations.

Good data storytelling is as important as good code.

🔗 8. How to Explore This Project

Start with README.md for the story and insights.

Explore /sql to see the logic behind each analysis step.

Open Exploratory_Analysis.ipynb to view full analysis, visual generation, and commentary.

Use /assets to inspect visuals independently.
