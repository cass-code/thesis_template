VECM_vars <- function(vecm_dataframe) {
  library(urca)
  library(vars)
  cointest <- ca.jo(vecm_dataframe, K=2, type="eigen", ecdet = "const")
  vecm <- cajorls(cointest)
  summary(vecm) 
  idk <- vecm$rlm
  idk1 <- vecm$beta
  idk <- tidy(idk)
  idk1 <- tidy(idk1)
  return(vecm)
}