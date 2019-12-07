# analysis

# Intall packages into RStudio environment (do only once)
install.packages("lintr")
install.packages("styler")

# To make the functions in the library available in your R script  
library("lintr")
library("styler")

# Example code which does not follow: https://style.tidyverse.org/news.html
# call setwd("Your WORKING DIRECTORY")
# call lint("analysis.R")
# call style_file("analysis.R")
# this file is used to demonstrate lint and style - and this is a very long comment, which violates tidyverse style

# Silly function
f <- function(a,b) 
{
return(a*b)
}

a = 10
b <- 12
t = a*b
