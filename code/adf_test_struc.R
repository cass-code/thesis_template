adf_test_struc <- function(dset){
  
  library("zoo")
  library("forecast")
  library("tseries")
  library("urca")
  library ("Quandl")
  
  QQstruc <- ur.za(dset[, 1], model = "intercept")
  RRstruc <- ur.za(dset[, 2], model = "intercept")
  YYstruc <- ur.za(dset[, 3], model = "intercept")
  summary(Qstruc)
adf.test(Qseasonal)
  Rstruc <- adf.test(dset[, 2])
  Ystruc <- adf.test(dset[, 3])
  
  dickey_resultsStruc <- list(Qstruc, Rstruc, Ystruc) 
  return(dickey_resultsStruc)
}
sum(Qstruc)
QQQ <- dset[, 1]
Qcomponents <- decompose(dset[, 1])
plot(Qcomponents)
Qseasonal <- QQQ - Qcomponents$seasonal

view(Qseasonal) 
view(QQQ)
plot(Qseasonal)


