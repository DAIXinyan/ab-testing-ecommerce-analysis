# ab-testing-ecommerce-analysis
A/B Testing Analysis on E-commerce Landing Page Conversion

## Overview
A/B testing analysis evaluating the impact of a new landing page design on user conversion rates. Dataset: 294,000 users across US, UK, and Canada markets.

## Key Findings

| Market | Difference | P-value | Significant |
|--------|------------|--------|-------------|
| Overall | +0.08% | 0.2151 |  No |
| US | -0.19% | 0.1816 |  No |
| Canada | -0.67% | 0.2016 |  No |
| UK | +0.08% | 0.7449 |  No |

**Conclusion**: New page did not deliver statistically significant improvement. Not recommended for full rollout.

## Tools Used
- **Python**: Data processing, Z-test (proportions_ztest)
- **SQL (DataGrip)**: Data extraction and validation
- **Power BI**: Interactive dashboard

## Project Structure
├── data/
│   ├── countries.csv
│   └── ab_data.csv
https://www.kaggle.com/datasets/putdejudomthai/ecommerce-ab-testing-2022-dataset1/data
├── scripts/
│   ├── abtest.ipynb
│   └── ab_test_analysis.sql
├── dashboard/
│   └── ABTEST.pbix
