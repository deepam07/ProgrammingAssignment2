## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#creating the cachematrix and the inverse of the function for the matrix
makeCacheMatrix <- function(x = matrix()) {
m<- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setInverse <- function(solve) m <<- solve
getInverse <- function() m
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

#creating the cachesolve to inverse the matrix
cachesolve <- function(x, ...) {
m <- x$getinverse()
if (!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setInverse(m)
return (m)
}
