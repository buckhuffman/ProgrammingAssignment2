## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invmat <- NULL
        set <- function(y) {
                x <<- y
                invmat <<- NULL
        }
        get <- function() x
        getinverse <- function() {
                invmat
        }
        setinverse <- function(inv) {
                invmat <<- inv
        }
        list(set = set, get = get,
             getinverse = getinverse,
             setinverse = setinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat <- x$getinverse()
        if(!is.null(mat)){
                message("getting cached data")
                return(mat)
        }
        data <- x$get()
        mat <- solve(data)
        x$setinverse(mat)
        mat
}
