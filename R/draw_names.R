#' Draw the evolution of the occurences of different names
#'
#' @param names the names you want to observe
#'@import dplyr tidyr ggplot2 prenoms
#' @return a ggplot graph
#' @export
#'
#' @examples
#' \dontrun{
#' draw_names(c("Jean","Marie"))
#' }
draw_names <- function(names){
  data("prenoms")
  prenoms %>% filter(name %in% names) %>%
    group_by(year,name) %>%
    summarize(count=n()) %>%
    ggplot(aes(x=year, y=count,color=name))+ geom_line()
}
