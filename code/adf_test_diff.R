adf_test_diff <- function(dsetYRdummy){
  
  library(urca)
  
  Qdiff <- diff(dsetYRdummy$log_QDP, differences = 1)
  Pdiff <- diff(dsetYRdummy$log_PRATIO, differences = 1)
  Ydiff <- diff(dsetYRdummy$log_YR, differences = 1)
  
  Qadf <- summary(ur.df(Qdiff, type = "none", lags = 1, selectlags = "Fixed"))
  Radf <- summary(ur.df(Pdiff, type = "none", lags = 1, selectlags = "Fixed"))
  Yadf <- summary(ur.df(Ydiff, type = "none", lags = 1, selectlags = "Fixed"))
  
  QQ <- cbind(Qadf@teststat, Qadf@cval)
  RR <- cbind(Radf@teststat, Radf@cval)
  YY <- cbind(Yadf@teststat, Yadf@cval)
  
  adfTestResults <- as.data.frame(rbind(QQ, RR, YY))
  
}
