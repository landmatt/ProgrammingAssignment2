## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i=NULL  ## initializes x and i with default values.
  set <- function(y) { 
    x <<- y ## uses assignment operator to assign input argument to the parent environment.
    i <<- NULL ## uses assignment operator to assign value NULL to i in the parent environment (clears out value for i that had been previously cached )
  } 
  get <- function() x ## defines the "getter" for matrix x, retrieving x's value from the parent environment.
  setsolve <- function(solve) i <<- solve ## defines the "setter" for solve i, using assignment operator to assign input argument to value of i in the parent environment.
  getsolve <- function() i ## defines the "getter" for solve i, retrieving i's value from the parent environment.
  list (set=set, get=get, setsolve=setsolve, getsolve=getsolve) ## gives names to functions. assigns each of the functions as an element within list and returns it to parent environment.
}

## Write a short comment describing this function
## this function creates the framework to calculate the inverse of the matrix and save it to the cache.

cacheSolve <- function(x, ...) {
  i <- x$getsolve() ## retrieves the inverse
  if(!is.null(i)) { ## checks to see if the inverse has been previously calculated and cached. If so, it returns that value. If not, it proceeds to calculate the inverse.
    message("getting cached data")
    return(i)
  }
  data <- x$get() ## retrieves "getter" for x
  i <- solve(data, ...) ## sets i as the input object
  x$setsolve(i) ## calculates inverse for i
  i ## returns value of inverse to the parent environment.
  
        ## Return a matrix that is the inverse of 'x'
  ## this function checks to see if the inverse has been previously calculated and cached, and if not, it calculates the inverse and returns it to the parent environment.
  ## this is an update.
}
