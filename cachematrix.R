## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(param_inverse) i <<- param_inverse
    getinverse <- function() i
    list(set = set, get = get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    ii <- x$getinverse()
    if(!is.null(ii)) {
        message("getting cached data")
        return(ii)
    }
    data <- x$get()
    ii <- solve(data, ...)
    x$setinverse(ii)
    ii
}
