# Changi_dataset

Analysis and preparation of data from [Changi Departure & Arrivals dataset](https://data.gov.sg/group/transport) on 12 April 2017. Methods: Excel, SPSS, R ggplot2. 

* Air Passenger Departures - Total by Region and Selected Country of Disembarkation
* Air Passenger Arrivals - Total by Region and Selected Country of Embarkation

# Contents

1. SPSS output - Boxplot growth over decade by region 2006-2016
1. SPSS output - Scatterplot of seasonal demand by month x region distribution 2006-2016
1. SPSS output - Net change in departures by month 
1. SPSS output - Curve Estimate & Stacked hierarchical regression model + equation. 
1. SPSS output - Distribution of anomalies in each region, shown through boxplots
1. SPSS output - travel patterns by Month X Region X Category(arrival vs departure)

### Images

1. JPEG graph of travel patterns by Month X Region X Category(arrival vs departure) -- in colour (based on above)
1. Updated 'Net change in departures by month' graph, *now with darker lines* 
1. R script for quadratic best fit line
1. R attempt at applying [AnomalyDetectionTS](https://github.com/twitter/AnomalyDetection) on dataset 

*Note: Anomaly Detection TS script failed due to non-linear Changi data. Anomaly detection done through boxplot graphing instead; errors defined as values >1.5 SD from that variable's mean.*

# Data

Data source: [here](https://data.gov.sg/group/transport).

* Total departure (csv)
* Total arrival (csv)
* Departures by country (csv)
* Departures by region (csv)
* Arrivals by country (csv)
* Arrivals by region (csv)

Last updated: Feb 2017 

# License
MIT. 
