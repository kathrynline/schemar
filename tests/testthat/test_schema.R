library(data.table)

test_that("You can initialize Schema class", {
  schema = Schema$new(required_columns = list())
  expect_true("Schema" %in% class(schema))
})

test_that("If a required column is missing, you get an error", {
  schema = Schema$new(required_columns = list('a' = Column$new("integer")))
  expect_error(
    schema$validate(data = data.table("b" = c(1))),
    regex = "Missing required columns a"
  )
})
