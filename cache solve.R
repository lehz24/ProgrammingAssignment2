cacheSolve <- function(x, ...) {
  i <- x$getInverse()
  if(!is.null(i)){
  message("getting cached data")
  return(i)
  }
  mat <- x$get()
  i <- solve(mat,...)
  x$setInverse(i)
  i
}