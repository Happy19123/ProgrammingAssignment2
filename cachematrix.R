## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inverse <- y$getInverse()
          if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- y$get()
        inverse <- solve(data)
        y$setInverse(inverse)
        inverse
}
