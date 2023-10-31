#' Boxplot Visualization for Payments by DRG Code
#'
#' This function generates a boxplot of a specified payment variable (e.g.,
#' "Average Medicare Payments") for different DRG codes. The visualization is
#' powered by the ggplot2 package, offering a clear and concise representation
#' of the distribution of payments across DRG codes.
#'
#' @param var The payment variable of interest. It can be "Average Medicare Payments",
#' "Average Total Payments", "Average Covered Charges", or any other valid column name
#' in the dataset.
#'
#' @return A ggplot2 boxplot showing the distribution of the selected payment variable
#' by DRG code.
#' @export
#'
#' @examples
#' boxplot(var = "Average.Medicare.Payments")
#' boxplot(var = "Average.Total.Payments")
#' boxplot(var = "Average.Covered.Charges")

boxplot <- function(var) {
  ## read data
  data(DRG_data)
  plot <- DRG_data %>%
    ggplot(aes(x=DRG.Definition,y=get(var))) +
    geom_boxplot() +
    labs(title = paste0("Boxplot of ",gsub("\\.", " ", var)," by DRG Code"),
         x = 'DRG Code',
         y = gsub("\\.", " ", var))
  return(plot)
}

boxplot('Average.Medicare.Payments')
