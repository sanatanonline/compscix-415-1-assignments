#' This is load data function
#'
#' This function allows you to load the training data
#' required for student loan default prediction model.
#' @param none
#' @keywords default_rate
#' @export
#' @examples
#' load_data()
load_data <- function() {
  default_rates <- read_excel("/opt/apps/code/git/compscix-415-1-assignments/efs/data/peps3xx.xls")
  return(default_rates)
}