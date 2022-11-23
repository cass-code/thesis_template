VECM_function <- function(vecm_data){
  
  vecm_dataframe <- data.frame(vecm_data$log_QDP, vecm_data$log_PRATIO,vecm_data$log_REAL) 
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  model <- tsDyn::VECM(vecm_dataframe, lag = 2, r=1, estim = "ML")
  # Run the vecm regressions with 2 lags and 1 cointegrating relationship
  # Estimate using the Maximum Likelihood method
  summary_vecm <- summary(model)
  summary_vecm
  # Summarise the regression results and return them
  return(model)
}