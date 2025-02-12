# iGaming Analytics

This repository contains a Python script for analyzing iGaming data, focusing on A/B testing, forecasting, and user segmentation. The analysis is performed using a dataset stored in `transactions.csv`.

## Overview

The script performs the following tasks:
1. **Data Loading and Preprocessing:** Loads the dataset and preprocesses date columns.
2. **A/B Testing:** Compares average deposit amounts between two brands using a t-test.
3. **Forecasting:** Forecasts total deposits using Exponential Smoothing.
4. **Value Segmentation:** Segments users based on their transaction behavior using KMeans clustering.


## Tableau Dashboard

The repository includes a Tableau dashboard that provides a visual summary of the analysis. The dashboard allows stakeholders to quickly assess brand performance, view forecasts, and explore user segments.

- **Link to Dashboard:** [View the Tableau Dashboard](https://public.tableau.com/app/profile/moses.obeng/viz/Performance_Overview/Dashboard?publish=yes)

## Setup

### Requirements

- Python 3.x
- Libraries: `pandas`, `numpy`, `matplotlib`, `seaborn`, `scipy`, `scikit-learn`, `statsmodels`

You can install the required libraries using pip:

```bash
pip install -r requirements.txt
