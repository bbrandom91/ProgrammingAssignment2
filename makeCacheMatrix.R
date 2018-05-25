makeCacheMatrix <- function(x = matrix()) {
  #Initialize the inverse
  inv <- NULL
  #Function to set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  #Function to get the matrix
  get <- function() x
  #Function to set the inverse
  setinv <- function(inverse) inv <<- inverse
  #Function to get the inverse
  getinv <- function() inv
  #Return a list of methods we used
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}