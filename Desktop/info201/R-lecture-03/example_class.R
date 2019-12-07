wd_path <- "~/desktop/info201/R-lecture-03/"
setwd(wd_path)
data <- carData::Florida
install.packages(carData)
library(carData)

sum(Florida[Florida$GORE > Florida$BUSH, 4])

nrow(Florida[Florida$GORE > Florida$BUSH,])
rownames(Florida[Florida$Total == max(Florida$Total),])
