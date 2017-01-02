## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I have initialized an empty object; then the set function assign the input argument to the x in the parent envirnoment and to inv the NULL value.
## Secondly, the makeCacheMatrix get the value of the inverse of the matrix and set the value of the inverse of the matrix, creating then a list with all defined objects.

makeCacheMatrix <- function(x = matrix()) {
	inv <-- NULL
	set <- function(y) {
    	x <<- y
   	inv <<- NULL
	}
	get <- function() x
     setinv <- function(solve) m <<- inv
     getinv <- function() m
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}

## Write a short comment describing this function
## The function gets the object m defined in makeCacheMatrix, and it returns it if the object is not empty. Otherwise, it computes the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}

