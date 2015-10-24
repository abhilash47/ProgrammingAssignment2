
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
  setMat <- function(y) {
    x <<- y
    i <<- NULL
  }
  getMat <- function() {    #return the matrix
    x
  } 
  setInv <- function(inv) {  #cache the given matrix
    i <<- inv
  } 
  getInv <- function() {  #return the cached value
    i
  } 
  list(setMat = setMat,getMat = getMat, setInv = setInv, getInv = getInv)
} 

## The below function calculate the inverse of the special matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
i <- x$getInv()
  if(!is.null(i)) {      #get the cached value if exists
    message("getting cached data")
    return(i)
  }
  
  data <- z$getMat()    #else get the matrix and calcuate inverse and cache it
  i <- solve(data)
  z$setinv(i)
  
  ## Return a matrix that is the inverse of 'x'
  i
}
