## These functions create a matrix and find it's inverse
## They will use a cached inverse if possible

## makeCacheMatrix has input of a matrix and outputs 
##a list with 4 functions

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                  x <<- y
                  m <<- NULL
                  
            }
            get <- function() x
            setinverse <- function(inverse) m <<- solve
            getinverse <- function() m
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
      

}


## cacheSolve returns the inverse of a matrix
##It uses the cached inverse when possible

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            m
      ## Return a matrix that is the inverse of 'x'
      }
      
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m

        ## Return a matrix that is the inverse of 'x'
}

