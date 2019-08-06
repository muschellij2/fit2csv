#' Fit to CSV conversion
#'
#' @param file Fit file to convert
#' @param verbose print diagnostic messages
#'
#' @return A character filename of CSV
#' @export
#'
#' @examples
#' file = system.file("extdata", "example.fit",
#' package = "fit2csv")
#' res = fit2csv(file)
fit2csv = function(file, verbose = FALSE) {
  tfile = tempfile(fileext = ".fit")
  file.copy(file, tfile)
  out = sub(".fit", ".csv", tfile)
  jar_file = system.file("extdata", "FitCSVTool.jar",
                         package = "fit2csv")
  args = c("-jar",
           jar_file,
           tfile)
  res = system2("java", args = args, stdout = !verbose)
  if (verbose) {
    if (res != 0) {
      warning("Exit was non-zero!, ")
    }
  }
  stopifnot(file.exists(out))
  attr(out, "result") = res
  out
}
