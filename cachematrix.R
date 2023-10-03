## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinversa <- function(inversa) inv <<- inversa
    getinversa <- function() inv
    list(set = set, get = get,
         setinversa = setinversa,
         getinversa = getinversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv <- x$getinversa()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinversa(inv)
    inv
}
