#' Draw the evolution of the number of occurence of a given name
#'
#' @param a_name the name you want to observe
#' @import tidyr dplyr ggplot2 prenoms assertthat
#' @return a graph
#' @export
#'
#' @examples
#' \dontrun{
#' draw_a_name("the name you want")
#' }
#'
#'

draw_a_name <- function(a_name){
  assert_that(is.character(a_name))
  prenoms %>% filter(name==a_name) %>%
    group_by(year) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=year, y=count))+ geom_line()
}
