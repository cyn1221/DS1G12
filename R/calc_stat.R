#' Statistics Calculation for Average Medicare Payments
#'
#' This a function that calculates statistics(mean, median, or standard deviation) over
#' all of the DRG codes for average medicare payments.
#'
#' @param stat Mean, median, or standard deviation
#'
#' @return Mean, median, or standard deviation of average medicare payments
#' @export
#'
#' @examples
#' calc_stat(stat = "mean")
#' calc_stat(stat = "median")
#' calc_stat(stat = "sd")

calc_stat <- function(stat = "mean"){
  ## read data
  data(DRG_data)
  temp_data <- DRG_data$Average.Medicare.Payments

  ## calculate mean
  if (stat == "mean") {
    result <- mean(temp_data)
  } else if (stat == 'median') {
    result <- median(temp_data)
  } else if (stat == 'sd') {
    result <- sd(temp_data)
  } else {
    stop("Please enter 'mean' or 'median'.")
  }
  return(paste(stat, "for average medicare payments is", result, "."))
}
