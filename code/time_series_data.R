time_series_data <- function(vecm_data){
  library(tsDyn)
  
  vecm_dataframe <- data.frame(vecm_data$log_QDP, vecm_data$log_PRATIO,vecm_data$log_REAL) 
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  
  QDP <- ts(vecm_data$log_QDP, start = c(2012, 1), frequency = 4)
  PRATIO <- ts(vecm_data$log_PRATIO, start = c(2012, 1), frequency = 4)
  REAL <- ts(vecm_data$log_REAL, start = c(2012, 1), frequency = 4)
  
  dset <- cbind(QDP, PRATIO)
  return(dset)
}