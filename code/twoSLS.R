twoSLS <- function(vecmYRdummy, log_data){

library("ivreg")

twoSLSresults <- ivreg(log_QDP ~  log_YR + dummy| log_PRATIO | exciseRatio,
              data = dsetYRdummyLagEx)

sum2sls <- summary(twoSLSresults)

}