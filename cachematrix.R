## These two functions can cache the inverse of a matrix

## creates a special “matrix” object that can cache its inverse for input

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
  x <<- y
  i <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) i<<- inverse
  getInverse <- function() i
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## cacheSolve is a function which computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated then the cachesolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
 i<- x$getInverse()
  if(!is.null(i)){
  message("getting cached data")
  return(i)
  }
  mat <- x$get()
  i <- solve(mat,...)
  x$setInverse(i)
  i
}
