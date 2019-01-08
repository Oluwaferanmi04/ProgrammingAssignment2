## Put comments here that give an overall description of what your
## functions do
## Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than compute it repeatedly
## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix 
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
makeVector <- function(x = numeric()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}
cacheinverse <- function(x, ...) {
  inv <- x$getinverse(inverse)
  if(!is.null()) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- inverse(data, ...)
  x$setinverse(inv)
  inv
}
