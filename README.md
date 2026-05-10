# H&M Seasonal Trends Analysis

## Table of Contents
- [Analysis Background](#analysis-background)
- [Executive Summary](#executive-summary)
- [Insights Deep Dive](#insights-deep-dive)
  - [Seasonal Sales Trends](#seasonal-sales-trends)
  - [Product Performance](#product-performance)
  - [Channel Insights](#channel-insights)
- [Recommendations](#recommendations)

## Analysis Background

H&M is a global fast-fashion retailer selling clothing and accessories products across multiple departments through both in-store and online channels. This analysis focuses on 28.8 million transactions spanning September 2018 to September 2020, covering purchasing behaviour across H&M's product catalogue. The analysis reveals seasonal trends, product performance insights, and channel patterns to inform merchandising and marketing decisions. Revenue metrics are normalized and reveal relative comparisons across product categories and seasonal periods.

Insights and recommendations are provided on the following key areas:

* Seasonal Sales Trends: Evaluation of historical transaction volume and revenue patterns across products, identifying strong-selling seasons and demand cycles for the top performing products.

* Product Performance Analysis: An assessment of H&M's top performing products by diving into transaction volume and revenue contributions, uncovering volume vs value disparities that inform the marketing team on which products to prioritize.

* Sales Channel Performance: An evaluation of online vs. in-store transactions over time, highlighting the most dominant sales channel and enabling marketing teams to prioritize strategies that maximize revenue growth.

An interactive Tableau dashboard can be located on Tableau Public [here](https://public.tableau.com/app/profile/kevin.phung8155/viz/HMVisualisation/Dashboard1).

The SQL queries utilized to inspect, clean, and prepare the data can be found [here](queries.sql).

The Excel workbook containing the exploratory data analysis and findings documentation can be found [here](https://github.com/user-attachments/files/27574063/H.M.Transactions.-.Exploratory.DA.xlsx).


## Executive Summary
### Overview of Findings

Across 28.8 million transactions ranging from September 2018 to September 2020, data shows that H&M's sales performance is primarily driven by seasonal demand cycles, a concentrated set of core products, and online channels. Trousers, dresses, and sweaters collectively dominate both transaction volume and revenue across all 25 months analyzed. Unlike consistent year-round products, seasonal products exhibit outsized volume and revenue growth during transitions into the season. Fall items such as sweaters exhibited recurring transaction volume surges across the analysis period, including a 162% increase between August and November of 2019. Likewise, summer items such as dresses also had recurring demand surges, averaging a 151% increase between March and June. Online transactions consistently outpace in-store by approximately 2:1 across the entire period, a trend that accelerated sharply in April 2020 when in-store transactions dropped to zero due to the COVID-19 pandemic leading to the closures of physical stores. The following sections look more closely into seasonal trends, performance patterns, and channel behaviour, concluding with recommendations to guide marketing and merchandising prioritization.

Below is the Tableau dashboard for this analysis. The entire interactive dashboard can be located on Tableau Public [here](https://public.tableau.com/app/profile/kevin.phung8155/viz/HMVisualisation/Dashboard1).

<img width="1150" height="1000" alt="Dashboard 1 (1)" src="https://github.com/user-attachments/assets/88cb6fb6-2d95-46fd-85f7-318bea00a90b" />

## Insights Deep Dive

### Seasonal Sales Trends:
* **Sweater transactions surged 162% between August and November 2019**, with this demand spike recurring consistently throughout the available data.
  
* **Dress transaction volume grew an average of 151% between March and June across 2019 and 2020**, with spring consistently marking the start of the summer revenue ramp across all years analyzed.
  
* Shorts displayed the most dramatic seasonal swing of any product, with transaction volume **increasing an average of 738% between March and June across 2019 and 2020,** reflecting notable customer demand heading into summer.

* Jacket transactions exhibited peaks during the fall (September–November), **recording a monthly increase of 96% transaction increase in 2019** from August to September.
  
### Product Performance

* **Trousers led all products in transaction volume and revenue** across the entire 25 month period, accounting for 13% of total transactions and approximately 17% of the revenue.
  
* **Trousers, blouses, tops, t-shirts, and bras held top 10 positions for both revenue and transaction volume** across all 25 months. At the same time, these products demonstrated stable performance, reflecting no meaningful seasonal variation, **making them year-round staples**.

* **Jackets rank in the top 5 for revenue** despite sitting outside the top 10 for transaction volume, reflecting a high price point that generates outsized revenue relative to purchase frequency.
  
* Vest tops and bikini tops rank in the top 10 for transaction volume but **fail to enter the top 10 for product revenue**, reflecting weaker price points that limit their revenue contribution despite carrying strong customer demand.

* **Dresses dominate summer revenue** despite a more reserved transaction surge (+151%) compared to shorts (+738%).
  
### Channel Insights

* **Online transactions outpaced in-store by approximately 2:1 across all 25 months analyzed**, with this pattern remaining consistent throughout the entire period.
  
* In April 2020, **online transactions reached an all-time high while in-store transactions dropped to zero due to COVID-19 store closures**, representing the sharpest single-month channel divergence in the dataset.
  
## Recommendations
The following recommendations were established with the insights gathered during the analysis

* **Maintain consistent inventory levels year-round and feature trousers prominently across all seasonal campaigns as the anchor product**, pairing them with items like dresses during the summer and sweaters in the fall to increase basket size.
  
* **Initiate sweater promotions in August ahead of the September–November demand surge**, increasing inventory allocation for the fall. As the season transitions, use bundled promotions and cross-selling with lightweight items such as t-shirts to support season-end sweater sell-through.

* **Dress campaigns should lead as the primary revenue driver**, with shorts featured prominently to drive traffic and cross-sell opportunities.
  
* **Target jacket marketing during fall months** when demand is naturally elevated, as the product's high price point means a small increase in transaction volume yields an outsized revenue impact relative to other products.

* **Leverage vest tops and bikini tops as cross-selling items** alongside dresses and high-volume summer items like shorts to increase average basket size.
  
* Sustain inventory availability for year-round products (blouses, tops, t-shirts, and bras). **Cross-sell these items alongside seasonal products to increase basket size**, such as blouses with dresses during the summer and tops and t-shirts layered under sweaters in the fall.
  
* **Prioritize digital marketing investment** including targeted social media advertising, email campaigns, and online-exclusive promotions to reach H&M's large digital customer base.

* **Use historical purchase behaviour to target customers who previously purchased seasonal items** such as dresses, sweaters, and jackets, promoting new seasonal releases ahead of peak demand periods.

## Limitations

**Normalized Revenue**
* Revenue figures from the raw data are normalized and do not depict actual dollar values, limiting the ability to make absolute revenue comparisons or calculate true ROI on marketing recommendations. All revenue insights and recommendations reflect relative differences between products rather than actual financial performance. 

**Incomplete Annual Cycles**
* The dataset begins in September 2018 and ends in September 2020, meaning summer 2018 and fall 2020 peaks are not fully observable. Seasonal percentage calculations for sweaters and jackets are based on a single complete annual cycle (2019), while dress and shorts averages are based on two complete cycles (2019 and 2020).

**Absence of Operational Data**
* The dataset contains no information on current marketing spend, inventory levels, or promotional activity, making it impossible to confirm whether recommendations are already being implemented by H&M. With further insights into current practices, this analysis could identify gaps between existing strategies and seasonal demand patterns, fostering more targeted and impactful recommendations.
