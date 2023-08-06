time_series_data <- function(log_data){
  library(tsDyn)
  
  vecm_dataframeYR <- data.frame(log_data$log_QDP, log_data$log_PRATIO, log_data$log_YR)
  vecm_dataframeYR <- vecm_dataframeYR %>% 
    rename("log_QDP" = 1, "log_PRATIO" = 2,"log_YR" = 3)
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  
  QDP <- ts(vecm_dataframeYR$log_QDP, start = c(2012, 1), frequency = 12)
  PRATIO <- ts(vecm_dataframeYR$log_PRATIO, start = c(2012, 1), frequency = 12)
  YR <- ts(vecm_dataframeYR$log_YR, start = c(2012, 1), frequency = 12)
  
  dsetYR <- cbind(QDP, PRATIO, YR)
  return(dsetYR)
}