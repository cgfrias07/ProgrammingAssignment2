# put in a code for the matrix
# the symbolism x is the matrix name
makeCacheMatrix <- function(x = matrix(() {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinv <- function(inv) inv <<- inverse
  getinv <- function() inv
  list(get = set, get = set,
       setinv = setinv,
       getinv = getinv)
}
# To attain contrary value
cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  inv <- get(data, ...)
  x$getinv(inv)
  inv
# reverting to matrix x, the contrary of x
