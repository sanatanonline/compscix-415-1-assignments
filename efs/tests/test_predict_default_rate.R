# Unit Test case for predict_default_rate function

library('testthat')
source("../pkgs/edl3.0/R/predict_default_rate.R")

test_data <- data.frame(recordId=c('1'),OPEID=c(''),Name=c(''),Address=c(''),City=c(''),State=c(''),StateDesc=c('
'),ZipCode=c(''),ZipExt=c(''),ProgLength=c(''),SchoolType=c(''),Year=c(''),Num=c(),Denom=c(),Prate=c(''),EthnicCode=c(''),CongDis=c(''),Region=c(''),Avg=c(''))

test_that("predict_default_rate", {
  
  predicted_default_rate <- predict_default_rate(test_data)
  
  expect_that( predicted_default_rate, is_a("double") )
  
})
