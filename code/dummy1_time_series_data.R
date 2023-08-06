dummy1_time_series_data <- function(vecm_data){
  library(tsDyn)
  
  vecm_dataframe1 <- data.frame(vecm_data$log_QDP, vecm_data$log_PRATIO,vecm_data$log_REAL) 
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  
  vecm_dataframe1$dummy2018 <- NA # Creates a new, empty column in the dataset (NA stands for missing data, or not available)
  vecm_dataframe1[1:82, "dummy2018"] <- "0" # assigns the category 0 to rows 1-82
  vecm_dataframe1[83:99, "dummy2018"] <- "1" # assigns the category 1 to rows 83-99
  vecm_dataframe1$dummy2018 <- as.numeric(vecm_dataframe1$dummy2018)
  
  QDP <- ts(vecm_data$log_QDP, start = c(2012, 1), frequency = 12)
  PRATIO <- ts(vecm_data$log_PRATIO, start = c(2012, 1), frequency = 12)
  REAL <- ts(vecm_data$log_REAL, start = c(2012, 1), frequency = 12)
  dummy2018 <- ts(vecm_dataframe1$dummy2018, start = c(2012, 1), frequency = 12)
  

  dsetDummy <- cbind(QDP, PRATIO, REAL, dummy2018)
  return(dummy2018)
}