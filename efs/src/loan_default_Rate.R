loan_default_rate <- function() {
  load_packages()
  # Add factors
  test_data$Name <- as.factor(test_data$Name)
  test_data$State <- as.factor(test_data$State)
  test_data$ZipCode <- as.factor(test_data$ZipCode)
  test_data$ProgLength <- as.factor(test_data$ProgLength)
  test_data$SchoolType <- as.factor(test_data$SchoolType)
  test_data$EthnicCode <- as.factor(test_data$EthnicCode)
  test_data$Prate <- as.factor(test_data$Prate)
  test_data$CongDis <- as.factor(test_data$CongDis)
  # Change 'Num' and 'Denom' to double
  test_data$Num <- as.double(test_data$Num)
  test_data$Denom <- as.double(test_data$Denom)
  # Create model
  model <- fit_default_rate(tidy_data(load_data()))
  # Predict and return
  return(predict(model, test_data))
}