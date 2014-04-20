###
## Shows how resource-intensive computations can be cached. In this script we use
## the solve() function as resource-intensive computation but the script should
## be easily transferable to other functions/tasks.
##
## Usage example:
##
## hilbert <- function(n) { i <- 1:n; 1 / outer(i - 1, i, "+") }
## cacheMatrix <- makeCacheMatrix(hilbert(4))
## cacheSolve(cacheMatrix) # first call will compute and return the result
## cacheSolve(cacheMatrix) # the second call will return a cached result
##


##
#  Converts the specified matrix into a structure that caches the matrix' inverse
#  ("Cache Matrix").
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverseMatrix <- function(inverseMatrix) i <<- inverseMatrix
  getInverseMatrix <- function() i
  list(set = set, get = get,
       setInverseMatrix = setInverseMatrix,
       getInverseMatrix = getInverseMatrix)
}

##
#  Uses the specified cache matrix object to get the matrix inverse.
#  --
#  Notes:
#   - If the inverse has been computed before, the result is returned from cache.
#   - If the inverse has not been computed before, the result is computed, put
#      into cache and then returned.
#   - All parameters of the solve() function are supported here, too.
cacheSolve <- function(x, ...) {
    i <- x$getInverseMatrix()
    if(!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setInverseMatrix(i)
    i
}