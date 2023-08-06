dataset_dummy_YR <- function(log_data){
  
  library(dplyr)
  dsetYRdummy <- data.frame(log_data$log_QDP, log_data$log_PRATIO,log_data$log_YR) 
  # Take the variables logQDP, logPRATIO and LOGYR and put them into a table
  
  dsetYRdummy$dummy <- NA # Creates a new, empty column in the dataset (NA stands for missing data, or not available)
  dsetYRdummy[1:82, "dummy"] <- "0" # assigns the category 0 to rows 1-82
  dsetYRdummy[83:99, "dummy"] <- "1" # assigns the category 1 to rows 83-99
  dsetYRdummy$dummy <- as.numeric(dsetYRdummy$dummy)
  
  dsetYRdummy <- dsetYRdummy %>%
  rename("log_QDP" = 1, "log_PRATIO" = 2,"log_YR" = 3)
  
  return(dsetYRdummy)
}
