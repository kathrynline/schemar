#' @title Column
#' @description Column class
#'
#' @field data_type [character] One of integer, numeric, character, or logical.
#' @field allow_na [logical] Should NAs be allowed in this column?
#'
#' @return Schema class instance
Column = R6::R6Class(
  "Column",
  list(
    data_type = NULL,
    allow_na = NULL,

    # TODO: Think about types of column validations you could want

    #' @description Initializes schema class.
    #' @param data_type [character] One of integer, numeric, character, or logical.
    #' @param allow_na [logical] Should NAs be allowed in this column?
    initialize = function(data_type, allow_na = FALSE){
      if (!data_type %in% c('integer', 'numeric', 'character', 'logical')){
        stop(sprintf("Allowed data types are integer, numeric, character, and logical; was passed %s", data_type))
      }
      self$data_type = data_type
      self$allow_na = allow_na
    }
  )
)

# TODO: Extend this base class to have requiredColumns and optionalColumns
