VECM_tsDyn <- function(dset1){
  
  model <- tsDyn::VECM(dset1, lag = 1, r=1, estim = "ML")
  # Run the vecm regressions with 2 lags and 1 cointegrating relationship
  # Estimate using the Maximum Likelihood method
  summary_vecm <- summary(model)
  summary_vecm
  # Summarise the regression results and return them
  return(summary_vecm)
}

