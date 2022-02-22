test_that("You can initialize Schema class", {
  schema = Schema$new(required_columns = list())
  expect_true("Schema" %in% class(schema))
})
