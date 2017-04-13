install.packages("ggplot2")
install.packages("anomalyDetection")
library(ggplot2)
library(AnomalyDetection)

# Change to the directory with europe.csv
setwd("/Users/Wallie/Desktop/Vals docs/Google/Departure tourism/R data/")

# I modified europe.csv to add headers (date, int)
mydata <- read.csv("totalm.csv")
copydata = mydata

copydata$date <- paste(as.character(copydata$date), "-01", sep="")
copydata$date <- as.Date(copydata$date, "%Y-%m-%d")
copydata$date <- as.numeric(copydata$date)
# # Extract the "year" in the string
# copydata$year <- mydata$date
# copydata$year <- substring(mydata$date, 0, 4)

# # Extract the "month in the string"
# copydata$month <- mydata$date
# copydata$month <- substring(copydata$month, 6)

# # Turn them into numeric so we can plot on graph
# # Use 13 months, otherwise December of Year X would overlap with January of Year X+1
# copydata$date <- as.numeric(copydata$year) + (as.numeric(copydata$month) / 13)


AnomalyDetectionTs(copydata[ ,c(1,2)], max_anoms=0.02, direction='both', plot=TRUE)
AnomalyDetectionVec(x=copydata[,1], max_anoms=0.02, period=12, direction='both', plot=TRUE)
AnomalyDetectionVec(copydata[ ,c(1,2)], max_anoms=0.02, period=31, longterm_period=365, direction='both', only_last=FALSE, plot=TRUE)

ORD_JFK_anomaly = AnomalyDetectionTs(
  x=copydata[ ,c(1,2)],
  max_anoms=0.02,
  direction = "both",
  alpha = 0.05,
  only_last=FALSE,
  longterm = TRUE,
  plot = TRUE,
  xlabel="Flights",
  ylabel="Dates")

ORD_JFK_anomaly$plot
ORD_JFK_anomaly$anoms


# Plot on the graph
ggplot(data=copydata, aes(x=month, y=value), xlab='Month', ylab='Visitors')+geom_line()+stat_smooth(col = "red", geom="smooth", method="lm", formula=y~poly(x,2))
