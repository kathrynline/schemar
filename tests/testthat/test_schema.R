test_that("You can initialize Schema class", {
  schema = Schema$new()
  expect_true("Schema" %in% class(schema))
})
