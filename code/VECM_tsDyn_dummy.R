VECM_tsDyn_dummy <- function(vecm_data){
  
 
  vecm_dataframe1 <- data.frame(vecm_data$log_QDP, vecm_data$log_PRATIO,vecm_data$log_REAL) 
  # Take the variables logQDP, logPRATIO and LOGREAL and put them into a table
  
  vecm_dataframe1$dummy2018 <- NA # Creates a new, empty column in the dataset (NA stands for missing data, or not available)
  vecm_dataframe1[1:82, "dummy2018"] <- "0" # assigns the category 0 to rows 1-82
  vecm_dataframe1[83:99, "dummy2018"] <- "1" # assigns the category 1 to rows 83-99
  vecm_dataframe1$dummy2018 <- as.numeric(vecm_dataframe1$dummy2018)
  
  vecm11 <- tsDyn::VECM(dsetYRdummySeason, lag = 2, r=1, estim = "ML", LRinclude = "none")
  
  # Run the vecm regressions with 2 lags and 1 cointegrating relationship
  # Estimate using the Maximum Likelihood method
  summary_vecm11 <- summary(vecm11)
  summary_vecm11
  # Summarise the regression results and return them
  return(vecm11)
}
