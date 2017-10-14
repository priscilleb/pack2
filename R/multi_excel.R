#' Import all  sheets from an excel file
#'
#' @param file path to the file
#' @import readxl assertthat
#' @return a list
#' @export
#'
#' @examples
#' \dontrun{
#' multi_excel(../../path/to/excel/file)
#' }
multi_excel <- function(file){
  assert_that(isdir(file))
  all_sheets <- readxl::excel_sheets(file)
  result <- lapply(all_sheets, function(sheet){readxl::read_excel(file,sheet=sheet)} )
  return(result)
}
