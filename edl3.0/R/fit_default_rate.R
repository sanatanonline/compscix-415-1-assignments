#' This is default rate model function
#'
#' This function allows you to create a model to predict the 
#' default rate for student loan application.
#' @param default_rates training data
#' @keywords default_rate
#' @export
#' @examples
#' fit_default_rate()
fit_default_rate <- function(default_rates) {
  lm_0 <- lm(Drate ~ ProgLength + SchoolType + Num + Denom + Prate + EthnicCode, data = default_rates)
  return(lm_0)
}