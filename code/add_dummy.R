library(dplyr)
dsetYRdummy2 <- data.frame(log_data$log_QDP, log_data$log_PRATIO) 
# Take the variables logQDP, logPRATIO and LOGYR and put them into a table

dsetYRdummy2$dummy2014 <- NA # Creates a new, empty column in the dataset (NA stands for missing data, or not available)
dsetYRdummy2[1:33, "dummy2014"] <- "0" # assigns the category 0 to rows 1-82
dsetYRdummy2[34:99, "dummy2014"] <- "1" # assigns the category 1 to rows 83-99
dsetYRdummy2$dummy2014 <- as.numeric(dsetYRdummy2$dummy2014)

dsetYRdummy2$dummy2018 <- NA # Creates a new, empty column in the dataset (NA stands for missing data, or not available)
dsetYRdummy2[1:82, "dummy2018"] <- "0" # assigns the category 0 to rows 1-82
dsetYRdummy2[83:99, "dummy2018"] <- "1" # assigns the category 1 to rows 83-99
dsetYRdummy2$dummy2018 <- as.numeric(dsetYRdummy2$dummy2018)

dsetYRdummy2 <- dsetYRdummy2 %>%
  rename("log_QDP" = 1, "log_PRATIO" = 2)

return(dsetYRdummy)