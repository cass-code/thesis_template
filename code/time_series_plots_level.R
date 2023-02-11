time_series_data_level <- function(vecm_data){
  library(tsDyn)
  
  vecm_dataframe <- data.frame(vecm_data$log_QDP, vecm_data$log_PRATIO,vecm_data$log_REAL) 
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  
  QDP <- ts(vecm_data$QDP, start = c(2012, 1), frequency = 12)
  PRATIO <- ts(vecm_data$PRATIO, start = c(2012, 1), frequency = 12)
  REAL <- ts(vecm_data$log_REAL, start = c(2012, 1), frequency = 12)
  
  dset <- cbind(QDP, PRATIO, REAL)
  return(dset)
}