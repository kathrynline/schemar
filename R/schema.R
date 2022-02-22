Schema = R6::R6Class(
  "Schema",

  list(
    required_columns = NULL,
    optional_columns = NULL,

    initialize = function(required_columns, optional_columns = NULL){
      # TODO: Assert each element of the list is a Column
      stopifnot(class(required_columns) == "list")
      if (!is.null(optional_columns)){
        stopifnot(class(optional_columns) == "list")
      }
      self$required_columns = required_columns
      self$optional_columns = optional_columns
    },

    validate = function(data){
      # Check that required columns are present
      missing_columns = names(self$required_columns)[!names(self$required_columns) %in% names(data)]
      if (length(missing_columns)>0){
        stop(sprintf("Missing required columns %s", paste0(missing_columns, collapse = ", ")))
      }
    }
  )
)
