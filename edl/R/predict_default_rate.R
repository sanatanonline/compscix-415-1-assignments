#' This is default rate prediction function
#'
#' This function allows you to predict the 
#' default rate for student loan application.
#' @param test_data student loan application parameters
#' @keywords default_rate
#' @export
#' @examples
#' predict_default_rate()
predict_default_rate <- function(test_data) {
  load_packages()
  return(predict(fit_default_rate(tidy_data(load_data())), test_data))
}