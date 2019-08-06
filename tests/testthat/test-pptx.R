testthat::context("Can convert")

testthat::test_that("Can convert example", {

  file = system.file("extdata", "example.fit",
                     package = "fit2csv")
  res = fit2csv(file)
  x = read.csv(res, as.is = TRUE)
#
#   testthat::expect_error({
#     testthat::expect_warning(gs_to_ari(bad_id))
#   })

})

