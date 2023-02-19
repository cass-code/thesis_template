# READ ME

* Read in data
* Interpolated income data
* Struggling to run a VECM and get the regression output in a nice table
* Tried tsDyn package - seems those results will have to be manually extracted since they cannot be coerced into a dataframe
* Using urca and vars it seems the output of the VECM can be tidied and put into a tibble to be used with huxreg (stargazer did not do well with the tibble so adjustments will have to be made)
* If there are problems knitting the index document, close any open pdf version and then reknit.
* Solved the logo issue (showing too small and overlapping with author name) but changing the template.tex file and adding a variable for $logo to author macro to includegraphics
* Solved the table issue where there was a 1 in the first cell by changing removing the article theme in huxtable and manually adding the lines
