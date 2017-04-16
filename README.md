# Changi_dataset

Analysis of data from [Changi Departure & Arrivals dataset](https://data.gov.sg/group/transport) on 12 April 2017.

* ``Air Passenger Departures`` - Total by ``Region`` and ``Selected Country of Disembarkation`` (2x csv)
* ``Air Passenger Arrivals`` - Total by ``Region`` and ``Selected Country of Embarkation`` (2x csv)

### Curve of best fit, plotted using R 

![Alt-text](http://i.imgur.com/W0jXvuM.jpg)

X Axis: 'Month'. Refers to ``YYYY-MM`` timestamp have been converted to integers for plotting in equal units.

Y Axis: 'Value'. ``Number of visitors`` for that month. Total = Arrival + Departure. 

Plotted using ggplot2. 

### Analysis

![Alt-text](http://i.imgur.com/QHgUSf9.jpg)
![Alt-text](http://i.imgur.com/nKkgtGc.jpg)

Based on the arrival & departure data, it appears that Changi airport is growing at a logarithmic rate. 
This can be seen through comparing linear regression against stacked hierarchical regression using a composite 
quadratic variant as proxy for logarithmic growth. 

Here, estimates using linear reqgression (89%) improves significantly (alpha < 0.001) with 
stacked hierarchical regression to 97.7% (see R-square under ``Model Summary`` table). 

![Alt-text](http://i.imgur.com/9q1u0nP.jpg)
![Alt-text](http://i.imgur.com/0aFQQ8i.jpg)

Conclusion: the equation (unstandardized coefficient beta) reads ``Y = 121095.08 - 1498.64X + 12.28 X^2 `` (to 2 decimal places).

### Breakdown of visitors by **region** over last decade (2006 - 2016). 

![Alt-text](http://i.imgur.com/SJ3znhC.jpg)

Boxplot graph indicate **Southeast Asia (SEA)** and **Northeast Asia (NEA)** as biggest regional contributors of visitors 
through Changi Airport. Trends also indicate both regions as fastest growing (by absolute numbers). *Whiskers of 
boxplot set to 1.5 SD from mean.*

### Other Reports

1. SPSS output - Boxplot growth over decade by region 2006-2016
1. SPSS output - Scatterplot of seasonal demand by month x region distribution 2006-2016
1. SPSS output - Net change in departures by month 
1. SPSS output - Curve Estimate & Stacked hierarchical regression model + equation. 
1. SPSS output - Distribution of anomalies in each region, shown through boxplots
1. SPSS output - travel patterns by Month X Region X Category(arrival vs departure)

### Other Visualisations

1. JPEG graph of travel patterns by Month X Region X Category (arrival vs departure) -- in colour (based on above)
1. Updated 'Net change in departures by month' graph, *now with darker lines* 
1. R script for quadratic best fit line
1. R attempt at applying [AnomalyDetectionTS](https://github.com/twitter/AnomalyDetection) on dataset 

*Note: Anomaly Detection TS script failed due to non-linear Changi data. Anomaly detection done through boxplot graphing instead; errors defined as values >1.5 SD from that variable's mean.*

Complete report with other visualisations not released. Please contact me for details. 

*Last updated: Feb 2017*
