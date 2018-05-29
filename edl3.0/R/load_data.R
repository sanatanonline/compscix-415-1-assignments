#' This is load data function
#'
#' This function allows you to load the training data
#' required for student loan default prediction model.
#' 
#' @param none
#' @keywords default_rate
#' @export
#' @examples
#' load_data()
load_data <- function() {
  default_rates <- readRDS(url('https://github.com/sanatanonline/compscix-415-1-assignments/blob/master/data/default.rds?raw=true'))
  return(default_rates)
}

