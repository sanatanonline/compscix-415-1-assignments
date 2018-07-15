#' This is tidy data function
#'
#' This function allows you to clean up and tidy the training data
#' required for student loan default prediction model.
#' @param default_rates uncleaned training data
#' @keywords default_rate
#' @export
#' @examples
#' tidy_data()
tidy_data <- function(default_rates) {
  # add factor to the 'char' columns
  default_rates$Name <- as.factor(default_rates$Name)
  default_rates$State <- as.factor(default_rates$State)
  default_rates$ZipCode <- as.factor(default_rates$ZipCode)
  default_rates$ProgLength <- as.factor(default_rates$ProgLength)
  default_rates$SchoolType <- as.factor(default_rates$SchoolType)
  default_rates$EthnicCode <- as.factor(default_rates$EthnicCode)
  default_rates$Prate <- as.factor(default_rates$Prate)
  default_rates$CongDis <- as.factor(default_rates$CongDis)
  # convert the columns to 'double' data type
  default_rates$Drate <- as.double(default_rates$Drate)
  default_rates$Num <- as.double(default_rates$Num)
  default_rates$Denom <- as.double(default_rates$Denom)
  return(default_rates)
}