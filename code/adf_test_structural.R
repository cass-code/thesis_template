adf_test_struc <- function(dset){

  library(strucchange)
 
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



#perform Chow test
sctest(data$y ~ data$x, type = "Chow", point = 10)

