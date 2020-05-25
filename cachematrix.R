## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m<- NULL
    set <- function(y){
        x<<- y
        m <<- NULL
    }
    get<- function() x
    setInv<- function(solve) m<<- solve
    getInv <- function() m
    list(x, set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}


## Write a short comment describing this function
##his function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    m <- x$getInv()
    if(!is.null(m)){
        message("getting Inverse Matrxi Cached")
        return(m)
    }
    data <- x$get()
    inv <- solve(data)
    x$setInv(m)
    m 
        ## Return a matrix that is the inverse of 'x'
}
