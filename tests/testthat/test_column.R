test_that("If a bad data type is passed, you get an error", {
  expect_error(
    Column$new(data_type = "something else"),
    regex = "Allowed data types are integer, numeric, character, and logical; was passed something else"
  )

})
