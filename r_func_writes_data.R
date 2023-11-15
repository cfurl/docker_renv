# Here is the general workflow I'm trying to accomplish
# use docker to build environment, with renv(), run a script, write to AWS
#library(ggplot2)
library(readr)

dat1 <- data.frame(
  sex = factor(c("Female","Female","Male","Male")),
  time = factor(c("Lunch","Dinner","Lunch","Dinner"), levels=c("Lunch","Dinner")),
  total_bill = c(13.53, 16.81, 16.24, 17.42)
)

write_csv(dat1,paste0(getwd(), "/output/alive.csv"))
