twoSLS <- function(dsetYRdummyLagEx){

library("ivreg")
twoSLSresults1 <- ivreg(log_QDP ~ dummy| log_PRATIO | lagPRATIO,
                         data = dsetYRdummyLagEx)
  
twoSLSresults <- ivreg(log_QDP ~ log_YR + dummy| log_PRATIO | lagPRATIO,
              data = dsetYRdummyLagEx)

# sum2sls <- summary(twoSLSresults)

# sum1 <- as.data.frame(sum2sls$coefficients)
# sum2 <- as.data.frame(sum2sls$sigma)
# sum3 <- sum2sls$r.squared
# sum4 <- sum2sls$adj.r.squared
# sum5 <- sum2sls$waldtest
# 
# slsList <- list(sum1, sum2, sum3, sum4, sum5)
# 
# list1 <- list(two2,sum5)
 two1 <- tidy(twoSLSresults, conf.int = TRUE, conf.level = 0.95)
 two2 <- tidy(twoSLSresults1, conf.int = TRUE, conf.level = 0.95)
 twolist <- list(two1, two2)

return(twolist)

}
