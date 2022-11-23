READ ME

* Read in data
* Interpolated income data
* Struggling to run a VECM and get the regression output in a nice table
* Tried tsDyn package - seems those results will have to be manually extracted since they cannot be coerced into a dataframe
* Using urca and vars it seemse the output of the VECM can be tidied and put into a tibble to be used with huxreg (stargazer did not do well with the tibble so adjustments will have to be made)