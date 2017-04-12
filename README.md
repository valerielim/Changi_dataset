# Changi_dataset

Analysis and preparation of data from [Changi Departure & Arrivals dataset](https://data.gov.sg/group/transport) (Last updated: Feb 2017). 
Methods: Excel, SPSS, R ggplot2. 

* Air Passenger Departures - Total by Region and Selected Country of Disembarkation
* Air Passenger Arrivals - Total by Region and Selected Country of Embarkation

# Contents

1. SPSS output - Boxplot growth over decade by region 2006-2016
1. SPSS output - Scatterplot of seasonal demand by month x region distribution 2006-2016
1. SPSS output - Net change in departures by month 
1. Updated 'net change in departures by month' graph, *now with darker lines* 
1. R script for quadratic best fit line
1. R attempt at applying [AnomalyDetectionTS](https://github.com/twitter/AnomalyDetection) on dataset - failed due to non-linear TS data. 
Anomaly detection done through boxplot instead; errors defined as values 1.5SD from that variable's mean.  
1. SPSS output - Curve Estimate & Stacked hierarchical regression model + equation. 
1. SPSS output - Distribution of anomalies in each region, shown through boxplots
1. SPSS output - travel patterns by Month X Region X Category(arrival vs departure)
1. JPEG graph of travel patterns by Month X Region X Category(arrival vs departure) -- in colour (based on above)

# Data

* Total departure (csv)
* Total arrival (csv)
* Departures by country (csv)
* Departures by region (csv)
* Arrivals by country (csv)
* Arrivals by region (csv)

# License
MIT. 
