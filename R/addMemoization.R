#' Add Memoization to a Function
#'
#' @param fcn the function to be memoized
#'
#' @return memoized function
#' @export
addMemoization <- function(fcn) {
  cat("In modified addMemoization()", sep = "\n")
  
  if (!is.function(fcn)) {
    stop("Argument 'fcn' is not a function");
  }

  # Already memoized?
  if (inherits(fcn, "MemoizedFunction")) {
    return(fcn)
  }

  res <- function(...) {
    args <- list(fcn, ...)
    do.call("memoizedCall", args=args)
  }
  class(res) <- c("MemoizedFunction", class(res))

  res
} 
