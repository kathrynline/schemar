Schema = R6::R6Class(
  "Schema",

  list(
    required_columns = NULL,
    optional_columns = NULL,

    initialize = function(required_columns, optional_columns = NULL){
      stopifnot(class(required_columns) == "list")
      if (!is.null(optional_columns)){
        stopifnot(class(optional_columns) == "list")
      }
      self$required_columns = required_columns
      self$optional_columns = optional_columns
    }
  )
)
