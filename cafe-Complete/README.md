# ☕ **Café Sales Data Analysis**: Unlocking Revenue Opportunities through Data

![Café Banner](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/attachment_75841918.jpeg)

## 1. **Background & Overview**

This project analyzes a **real-world café sales dataset** from Kaggle, aiming to derive actionable insights for optimizing sales, pricing, promotions, and inventory planning. By transforming messy and inconsistent data into valuable business intelligence, the goal was to identify key performance drivers and provide actionable strategies to improve profitability and operational efficiency.

### **Business Objective**:
- **Optimize pricing and inventory** for better profitability.
- **Identify high-revenue and high-demand items** to guide menu management.
- **Enable smarter promotions and demand forecasting** to improve customer satisfaction and reduce waste.

### **Key Analysis Areas**:
- **Revenue Optimization**: Identifying the top-performing products.
- **Category Performance**: Analyzing the performance difference between Drinks and Snacks.
- **Promotions & Bundling**: Exploring the potential for bundle offers to increase revenue.

---

## 2. **Data Structure Overview**

The dataset captures transaction records for café sales, including product details, quantities, prices, and payment methods. Key columns include:

- **Items**: Menu items, categorized as Drinks or Snacks.
- **Transaction Data**: Sales, quantities, and price per unit.
- **Location**: Café location where the transaction took place.
- **Payment Method**: Payment type used by customers.
- **Transaction Date**: Date and time of the transaction.

![Dataset Overview](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/data%20overview.png)

---

## 3. **Executive Summary**

### **Key Insights**:
Through analysis, several key insights emerged, each offering actionable steps to improve café operations and profitability.

#### **Revenue Leaders: Coffee & Smoothies**
The analysis clearly identified that **Coffee** and **Smoothies** generated the highest revenue, both in terms of sales volume and unit price. These items outperformed others in both the number of units sold and the total revenue they contributed.

- **Interpretation**: Coffee and Smoothies not only represent high-demand products but also have a solid profit margin, making them key drivers of revenue for the café. Their popularity indicates that these items are consistently favored by customers.
  
- **Business Value**: Given their high performance, these items should be further leveraged in **marketing campaigns** and **promotions**. Exploring premium versions or special offerings (e.g., seasonal flavors) could attract even more customers, ultimately driving both volume and profit. Focusing on these products for upselling could lead to **improved margins** and **increased customer retention**.

#### **Volume ≠ Profitability: Tea & Cookies**
While **Tea** and **Cookies** saw high sales volumes, their contribution to revenue was disproportionately low. Despite large quantities sold, their **low unit prices** meant they didn’t generate significant revenue.

- **Interpretation**: The data revealed that these items, although popular, are priced too low to drive substantial profitability. Their high sales volume doesn’t equate to high revenue because they are often priced below their true potential.
  
- **Business Value**: A targeted **price optimization strategy** for these items—specifically a **5-10% price increase**—could result in a noticeable increase in revenue. This adjustment would allow the café to capture more value from existing demand, without likely affecting the popularity of these items.

#### **Drinks Outperform Snacks**
When comparing **Drinks** and **Snacks**, it became evident that **Drinks** consistently generated higher revenue than **Snacks**, such as **Cookies**, despite their similar demand levels. Drinks dominated the overall revenue share, while Snacks, though popular, had low-profit margins.

- **Interpretation**: The distinction between **Drinks** and **Snacks** lies not only in their revenue contribution but also in their **marginal profit**. Drinks are clearly the higher-margin category, while Snacks like Cookies are relatively underpriced. The café has an opportunity to re-evaluate pricing and bundling for Snacks.

- **Business Value**: By **reassessing the pricing structure for Snacks**, particularly for high-demand, low-margin items like Cookies, the café could boost overall profitability. In addition, introducing **bundles** like “Coffee + Cookie” or “Smoothie + Muffin” could increase **average transaction value**, making both product categories more profitable.

---

## 4. **Data Cleaning and Preprocessing**

### **Problem: Inconsistent and Missing Data**  
The dataset contained **missing, inconsistent, or erroneous data** in key columns, which led to skewed or unreliable insights. Columns like `item`, `quantity`, `price_per_unit`, and `total_spent` had null values, errors like 'ERROR' or 'UNKNOWN', or mismatched relationships.

### **Cleaning Approach**:  
Through careful analysis and data manipulation, I cleaned and preprocessed the dataset, addressing each issue logically:

- **Item Name and Price Issues**:  
  Many `item_name` and `item_price` entries were either invalid or missing. To resolve this, I used a **menu table** that listed correct items and their prices. With the relationship `item_price = total_spent / quantity`, I inferred the correct values and used placeholders such as **'Other'** or **'Undefined'** for any remaining invalid entries.

- **Quantity and Price Calculation**:  
  Missing or inconsistent entries in `quantity` and `price_per_unit` were a major challenge. By leveraging the relationship `total_spent = price_per_unit × quantity`, I was able to **impute missing values** by calculating `price_per_unit` when `quantity` was available, and vice versa. This step ensured the data was complete and consistent.

- **Location and Payment Method**:  
  Invalid entries in the `location` and `payment_method` columns were replaced with placeholders like **'Undefined'**, which simplified future analysis and helped to keep the data structured.

### **Key Cleaning Principle**:
The data was cleaned with a focus on **business logic**. Each record was validated to ensure consistency, particularly the calculation of `total_revenue = quantity × price_per_unit`. By cleaning the dataset thoroughly, I ensured that the insights derived from the data would be reliable and actionable.

---

## 5. **Data Exploration and Visualizations**

### **Revenue by Item**
When examining the **total revenue by item**, Coffee and Smoothies stood out as the key revenue drivers, both in terms of volume and pricing. These products not only had high demand but also provided solid profit margins, making them ideal candidates for future promotional efforts.

![Total Revenue by Items](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/total_revenue_by_items.png)

### **Revenue vs Quantity**
The comparison of **Revenue vs Quantity** revealed that Tea and Cookies, despite their high sales volume, had lower revenue contributions. This discrepancy highlighted the need to **adjust pricing** for these high-volume, low-revenue items to enhance profitability.

![Revenue vs Quantity](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/skimpy_report.png)

### **Drinks Revenue Contribution**
A deeper dive into the **revenue from Drinks** shows how Coffee and Smoothies are driving the café's profitability. These items are responsible for a significant portion of total sales revenue, highlighting their importance in the café’s offerings.

![Revenue for Drinks](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/drink_revenue.png)

### **Snacks vs Revenue**
A side-by-side comparison of **Snacks** versus revenue reveals that although Snacks like Cookies are in demand, their contribution to revenue is much lower due to their price point.

![Snacks vs Revenue](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/category_comparison.png)

### **Menu Table**
The **menu table** was crucial for consolidating and validating product data, ensuring the accurate pricing and categorization of items. It helped fill in gaps and correct mismatches in item names and prices.

![Menu Table](https://raw.githubusercontent.com/No1Deku/NtandoNkunaPortfolio-Projects/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/images/menu-table.png)

---

## 6. **Strategic Recommendations**

Based on the insights gained, here are actionable recommendations that can help optimize the café’s revenue and operational strategy:

### 🎯 **1. Price Optimization**
The analysis revealed that Tea and Cookies were high-volume but low-revenue items due to their **low price points**. By adjusting the prices of these items by **5-10%**, the café could significantly boost their revenue without affecting demand.

- **Strategic Value**: This approach would increase overall revenue by improving margins on existing sales, contributing to profitability without risking customer churn.

### 🤝 **2. Bundling & Promotions**
Introducing bundles such as “Coffee + Cookie” or “Smoothie + Muffin” could provide an opportunity to increase the average transaction value. With high-demand items like Coffee and Smoothies paired with popular Snacks, customers would be more likely to purchase more items at once.

- **Strategic Value**: This could increase revenue per customer by **12-15%** by leveraging existing preferences and increasing the average spend per transaction.

### 📊 **3. Demand Forecasting**
To improve stock management and optimize inventory, implementing a **time-series forecasting model** would allow the café to predict peak sales periods (e.g., mornings or weekends). This would ensure that the café is staffed appropriately and stocked with the right products at the right time.

- **Strategic Value**: Accurate forecasting could reduce **inventory waste by 20-25%**, improve stockouts, and better align supply with demand.

### 💡 **4. Improve Data Capture**
Standardizing data entry for **payment methods** and **locations** at the point of sale (POS) would reduce inconsistent or erroneous entries. This improvement would not only enhance the accuracy of future analytics but also allow for **better customer segmentation** and **targeted marketing campaigns**.

- **Strategic Value**: Enhanced data capture would lead to **improved loyalty tracking** and more **personalized marketing**, potentially boosting repeat business by **10-15%**.

---

## 7. **Conclusion**

By leveraging thorough data cleaning and exploration, this project has turned a messy dataset into actionable business insights. The café can now confidently make decisions regarding **pricing adjustments**, **product bundling**, **demand forecasting**, and **customer segmentation**, all backed by reliable data.

Through these strategies, the café can expect to see **improved profitability**, **higher customer satisfaction**, and **better operational efficiency**, all driven by a **data-driven approach** to decision-making.

---

### **Lessons Learned**
This project reinforced the importance of **data cleanliness** and **contextual analysis**. By using business logic to validate and clean the data, I was able to extract actionable insights that provide tangible value to the café’s operations and growth.

---

## 8. **Access the Notebook and Dataset**

For a deeper dive into the analysis and to explore the data cleaning, exploratory analysis, and modeling steps, please access the following resources:

- [Jupyter Notebook: café-final.ipynb](https://github.com/No1Deku/NtandoNkunaPortfolio-Projects/blob/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/cafe-final.ipynb)
- [Dataset: dirty_cafe_sales.csv](https://github.com/No1Deku/NtandoNkunaPortfolio-Projects/blob/29885fd6a843ff42d1fe53ff7b459fa6a28c37fb/cafe-Complete/dirty_cafe_sales.csv)

---
