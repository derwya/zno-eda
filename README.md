# ZNO Data Analysis (2016-2021)

This repository contains a data analysis of the Ukrainian External Independent Evaluation (ZNO/NMT) open datasets from 2016 to 2021.

The goal is to explore geospatial and temporal trends in educational outcomes across Ukraine, focusing on how systemic changes (like educational reforms and the shift to remote learning) and structural inequalities manifest across different regions and subjects.

## The Data

The analysis uses anonymized, participant-level open data provided by the **Ukrainian Center for Educational Quality Assessment (UCEQA)**.

## 🛠️ Installation & Setup

To run the Jupyter Notebook, ensure you have Python 3 installed along with the following dependencies:

`pip install numpy pandas matplotlib ipywidgets geopandas`

To download datasets, you can run `download.sh` bash script or manually from `zno.testportal.com.ua/opendata site`. Make sure you have `7zz` installed to extract data from archives.

`bash download.sh 2016 2017 2018 2019 2020 2021`
