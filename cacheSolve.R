cacheSolve <- function(x, ...) {
  #Retrieve the inverse
  inv <- x$getinv()
  #Checks if inverse already set, and if so gets it
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  #Get back original matrix
  matr <- x$get()
  #Calculate inverse
  inv <- solve(matr, ...)
  #Set the inverse
  x$setinv(inv)
  #Return the inverse
  inv
}