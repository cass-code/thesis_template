adf_test <- function(dsetYRdummy){
  library(urca)
  Qadf <- summary(ur.df(dsetYRdummy$log_QDP, type = "none", lags = 1, selectlags = "Fixed"))
  Radf <- summary(ur.df(dsetYRdummy$log_PRATIO, type = "none", lags = 1, selectlags = "Fixed"))
  Yadf <- summary(ur.df(dsetYRdummy$log_YR, type = "none", lags = 1, selectlags = "Fixed"))
  
  QQ <- cbind(Qadf@teststat, Qadf@cval)
  RR <- cbind(Radf@teststat, Radf@cval)
  YY <- cbind(Yadf@teststat, Yadf@cval)
  
  adfTestResults <- as.data.frame(rbind(QQ, RR, YY))
  
  return(adfTestResults)
  
  # dset <- dsetYRdummy
  # library(tseries)
  # Q <- adf.test(dset[, 1])
  # R <- adf.test(dset[, 2])
  # Y <- adf.test(dset[, 3])
  # 
  # dickey_results <- list(Q, R, Y) 
  # return(dickey_results)
}


