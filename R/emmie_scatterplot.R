#' Scatterplot Function
#'
#' This function creates a scatterplot with Emmie's design, absolutely beautiful
#'
#' @param dataset This includes the dataset to use
#' @param x_name This is the name of the column for the x-axis
#' @param y_name This is the name of the column for the y-axis
#' @return This function returns a ggplot scatterplot
#' @export

emmie_scatterplot <- function(dataset, x_name, y_name) {
  ggplot(dataset, mapping = aes(x = {{x_name}}, y = {{y_name}})) +
    geom_point(color = "indianred") +
    labs(title = paste(deparse(substitute(x_name)), "vs", deparse(substitute(y_name))),
         x = deparse(substitute(x_name)),
         y = deparse(substitute(y_name))) +
    theme_light()
}



