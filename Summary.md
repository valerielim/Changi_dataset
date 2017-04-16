# Changi Dataset Analysis

Based on the arrival & departure data, it appears that Changi airport is growing at a logarithmic rate. 

### Curve of best fit, plotted using R 

![Alt-text](http://i.imgur.com/W0jXvuM.jpg)

X Axis: 'Month'. Refers to ``YYYY-MM`` timestamp have been converted to integers for plotting in equal units.

Y Axis: 'Value'. ``Number of visitors`` for that month. Total = Arrival + Departure. 

Plotted using ggplot2. 

### Analysis

![Alt-text](http://i.imgur.com/QHgUSf9.jpg)
![Alt-text](http://i.imgur.com/nKkgtGc.jpg)

Using linear regression, estimates using linear reqgression (89%) improves significantly (alpha < 0.001) with 
stacked hierarchical regression to 97.7% (see R-square under ``Model Summary`` table). 

![Alt-text](http://i.imgur.com/9q1u0nP.jpg)
![Alt-text](http://i.imgur.com/0aFQQ8i.jpg)

*Plotted with SPSS.* Compares linear (continuous black line) against quadratic (dotted line) best fit.
Quadratic curve fits better suggesting logarithmic growth. 

Conclusion: the equation (unstandardized coefficient beta) reads ``Y = 121095.08 - 1498.64X + 12.28 X^2 `` (to 2 decimal places).

*Plotted with IBM SPSS 22.*
