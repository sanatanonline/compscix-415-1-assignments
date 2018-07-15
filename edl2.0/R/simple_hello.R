#' simple hello Function
#'
#' This function allows you to express your love of cats.
#' @param love Do you love cats? Defaults to TRUE.
#' @keywords cats
#' @export
#' @examples
#' simple_hello()
simple_hello <- function() {
  load_packages()
  model <- fit_default_rate(tidy_data(load_data()))
  
  test_data$Name <- as.factor(test_data$Name)
  test_data$State <- as.factor(test_data$State)
  test_data$ZipCode <- as.factor(test_data$ZipCode)
  test_data$ProgLength <- as.factor(test_data$ProgLength)
  test_data$SchoolType <- as.factor(test_data$SchoolType)
  test_data$EthnicCode <- as.factor(test_data$EthnicCode)
  test_data$Prate <- as.factor(test_data$Prate)
  test_data$CongDis <- as.factor(test_data$CongDis)
  
  test_data$Num <- as.double(test_data$Num)
  test_data$Denom <- as.double(test_data$Denom)
  
  return(predict(model, test_data))
}
