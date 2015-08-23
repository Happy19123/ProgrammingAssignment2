# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the 
# matrix. Contains the following functions:
# * set            set the value of a matrix
# * get            get the value of a matrix
# * setInverse     get the cahced value (inverse of the matrix)
# * getInverse     get the cahced value (inverse of the matrix)

makeCacheMatrix <- function(x = matrix()) {

        c<- NULL
        
        set<-function(y){
                x<<- y
                #deleting any cache
                c<<- NULL
        }
        
        get <- function() {
                x
        }
        
        setInverse <- function(solve) {
                c <<- solve
        }
        
        getInverse <- function() {
        c
        }

        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}



# The following function calculates the inverse of a "special" matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse <- x$getInverse()
          if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data)
        x$setInverse(inverse)
        inverse
}
