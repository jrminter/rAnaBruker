#' cleanLocation
#'
#' This function cleans a sample identifier string with the format
#' \code{a-sample-id location 4(X)} producing a string with the format
#' \code{a-sample-id 4 X} ready to be split into a list of
#' \code{c(id, location, variant)}.
#'
#' @param strEncodedLocation A string with the location encoded as above.
#'
#' @return A string ready for splitting
#'
#' @export
#'
#' @examples
#' # not run
cleanLocation <- function(strEncodedLocation){
  a <- gsub(" location ", " ", strEncodedLocation)
  a <- gsub("[()]", " ", a)
  # a <- unlist(strsplit(a, " "))
  a <- substr(a, 1, nchar(a)-1)
  a
}
