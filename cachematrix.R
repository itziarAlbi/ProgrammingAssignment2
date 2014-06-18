

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {


}




#Calculates the inverse of a matrix, using the solve method


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		#Is a square matrix ?, so the number of rows is equals to the number of columns
		nRows <-nrow(x);
		nCols<-ncol(x);
		if (nRows == nCols){
			solve(x);
		}
		
        
}
