library(tidyverse)
library(readxl)

# Default data
default_amount <- c(4.13,3.69,4.26,4.21,5.43,4.59,4.40,4.84,5.23,4.53,5.02,5.77)
arr <- c("2015-03-30","2015-06-30","2015-09-30","2015-12-30","2016-03-30","2016-06-30","2016-09-30","2016-12-30","2017-03-30","2017-06-30","2017-09-30","2017-12-30")
default_date <- as.Date(arr)
df <- data.frame(default_date, default_amount)

# Function for creating the plot
plot_default_rate <- function() {
  p <- ggplot(df, aes(x=default_date, y=default_amount))
  p <- p + geom_line()
  p <- p + labs(x="Year", y="Default amount (in billions)", title="Figure1 : Cumulative Lifetime Default Rates")
  p <- p + theme_bw()
  return(p)
}

