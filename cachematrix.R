##Caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y, nRows, nCols) {
                x <<- matrix(y, nRows, nCols);
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}

#Calculates the inverse of a matrix, using the solve method

cacheSolve <- function(x, ...) {

			
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
}

