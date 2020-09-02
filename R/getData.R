#' Reads in data from all Excel Files
#'
#' @description This function will read a collection of xl files into R's workplace
#'
#' @details This will greatly reduce the amount of work needed to perform analyses since the reading of files can be time consuming.
#'
#' @param dird this is the directory structure as a string
#'
#' @return a named list of the files read
#' @export
#'
#' @examples
#' \dontrun{
#' v<-getData()
#' }
getData <- function(dird = "C:/Dev/R_Projects/MATH4753CURR0011/Data/K25936_Downloads/Excel/")
{
  files = list.files(dird)
  myconvert = function(xl) {
    if (stringr::str_ends(xl, "XLS") | stringr::str_ends(xl,
                                                         "xls")) {
      v = try(readxl::read_xls(paste0(dird, xl)), silent = TRUE)
    }
    else {
      v = NA
    }
    v
  }
  v = purrr::map(files, ~myconvert(.x))
  l <- stringr::str_length(files)
  newnames <- stringr::str_sub(files, 1, l - 4)
  names(v) <- newnames
  invisible(v)
}
