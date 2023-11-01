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

  if (stat == "mean") {
    ## calculate mean
    result <- mean(temp_data)
  } else if (stat == 'median') {
    ## calculate median
    result <- median(temp_data)
  } else if (stat == 'sd') {
    ## calculate sd
    result <- sd(temp_data)
  } else {
    ## hint
    stop("Please enter 'mean' or 'median'.")
  }
  ## print result
  return(paste(stat, "for average medicare payments is", result, "."))
}
