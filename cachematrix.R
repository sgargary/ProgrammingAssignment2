## Put comments here that give an overall description of what your
## functions do: Caching the Inverse of a Matrix

## Write a short comment describing this function: create a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        invr <- NULL
  set <- function(y) {
    x <<- y
    invr <<- NULL

}


## Write a short comment describing this function: this function solves for inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(invr)) {
    message("Getting Cached Data:-")
    return(invr)
  }
  matrx <- x$get()
  invr <- solve(matrx, ...)
  x$setinverse(invr)
  invr
}
