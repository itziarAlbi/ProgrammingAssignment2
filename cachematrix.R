##Caches the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
        set <- function(y, nrow=1, ncol=1) {
                x <<- matrix(y, nrow, ncol);
                m <<- NULL
        }
        get <- function() x
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}

#Calculates the inverse of a matrix, using the solve method. 
#If inverse is already calculated, the function returns the cache value, otherwise it calculates it. 

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

#Example

#v <- makeCacheMatrix();
#v$set(matrix(1:4), 2, 2)   
#v$get()
#cacheSolve(v)

#or

#v <- makeCacheMatrix();
#v$set(matrix(rnorm(9)),3,3) 
#v$get()
#cacheSolve(v)
