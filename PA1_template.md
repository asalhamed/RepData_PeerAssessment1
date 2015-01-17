---
title: "Reproducible Research: Peer Assessment 1"
output: 
  html_document:
    keep_md: true
---


## Loading and preprocessing the data

```r
library("data.table")
```

```
## data.table 1.9.4  For help type: ?data.table
## *** NB: by=.EACHI is now explicit. See README to restore previous behaviour.
```

```r
library("ggplot2")
rawData = read.csv(file="activity.csv",header=TRUE,sep=",",na.strings="NA")
stepsSum <- as.data.frame(cbind(by(rawData,rawData$date,function(df) sum(df$steps,na.rm=TRUE))))
stepsSum$date <- rownames(stepsSum)
rownames(stepsSum) <- NULL
colnames(stepsSum) <- c("Steps","Date")
```


## What is mean total number of steps taken per day?



## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
