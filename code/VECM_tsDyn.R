VECM_tsDyn <- function(dset){
  
  model <- tsDyn::VECM(dset, lag = 1, r=1, estim = "ML")
  # Run the vecm regressions with 2 lags and 1 cointegrating relationship
  # Estimate using the Maximum Likelihood method
  summary_vecm <- summary(model)
  summary_vecm
  # Summarise the regression results and return them
  return(model)
}