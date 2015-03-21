## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
xInv <- NULL
set <- function(y) {
x <<- y
xInv  <<- NULL
}
get <- function() x
setinverse<- function(inverse) xInv <<-inverse
getinverse <- function() xInv
list(set = set, get = get,
setinverse = setinverse,
getinverse = getinverse)
}
 


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
xInv <- x$getinverse()
if (!is.null(xInv)) {
message("getting cached inverse matrix")
return(xInv)
} else {
xInv <- solve(x$get())
x$setinverse(xInv)
return(xInv)
}
}
