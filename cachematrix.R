## Functions to set and retrieve cached values when given a square matric that has an inverse. 

## Takes matrix and returns a list containing functions to set the matrix, get the matrix, set the inverse, and get the inverse.  

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Returns the cached inverse matrix when given a return value from makeCacheMatrix.

cacheSolve <- function(x, ...) {
  m = x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data = x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  
  return(m)
  
  
  
  ## Return a matrix that is the inverse of 'x'
}


