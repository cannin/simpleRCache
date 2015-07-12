#' Set Cache Root Path
#'
#' @param path the cache root directory
#'
#' @export
setCacheRootPath <- function(path="~/.simpleRCache") {
  if(!file.exists(path)) {
    dir.create(path)
  }

  options("simpleRCacheRoot" = path)
}
