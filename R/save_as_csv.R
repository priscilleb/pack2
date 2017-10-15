#'Save as csv function
#'
#'
#'@param dataset the dataset you work with
#'@param filename the file you want to read
#'@param row.names the list of the names of the row
#'
#'@import assertthat
#'@return a dataframe
#'@export
#'
#' @examples
#' \dontrun{
#' save_as_csv(dataset_name, myfile_with_a_csv_extension)
#' }
save_as_csv <- function(dataset,filename, row.names=FALSE, ...){
  assert_that(has_extension(filename,"csv"))
  assert_that(is.dir(dirname(filename)))
  assert(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv2(x=dataset, file=filename, row.names = row.names, ...)

  invisible(normalizePath(filename))
}
