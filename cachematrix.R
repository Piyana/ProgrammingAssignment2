## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix: Creates a special "matrix" object that can cache its inverse.
## cacheSolve: This function computes the inverse of the special "matrix" returned
## by makeCacheMatrix above.
## However, if the matrix does not change and the inverse has already been
## calculated, then it retrieves the value from the cache
## By doing so, computer reources are saved

## makeCacheMatrix: Creates a special "matrix" object
## that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function() m {
x <<- y
m <<- NULL

}
get <- function() x
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set=set,get-get'
     setinverse=setinverse,
     getinverse=getinverse)
     }
     

## Write a short comment describing this function

##The following function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed),
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
m <- x$getinverse()
if(!is.null(m)) {
message("getting the cached data")
return(m)
}
data <- x$get()
m <- solve(data,...)
x$setinverse(m)
m
        ## Return a matrix that is the inverse of 'x'
}
