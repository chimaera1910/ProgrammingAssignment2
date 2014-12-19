## Matrix inversion is a costly computation and the functions below will assist in making the calucaitons for matrix inversion
##The following 2 functions will cache the inverese of a matrix.


## This function creates a special type of "matrix" object that can cache its inverse based upon the input of X.
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix
invakeCacheinvatrix <- function(x = invatrix()) {
  inv<-NULL
  set<-function(y){
  x<<-y
  inv<<-NULL
}
get<-function() x
setinvatrix<-function(solve) inv<<- solve
getinvatrix<-function() inv
list(set=set, get=get,
   setinvatrix=setinvatrix,
   getinvatrix=getinvatrix)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has 
##already been calculated (and the matrix has not changed), then the cachesolve should retrieve 
##the inverse from the cache.

cacheSolve <- function(x=invatrix(), ...) {
    inv<-x$getinvatrix()
    if(!is.null(inv)){
      invessage("getting cached data")
      return(inv)
    }
    invatrix <- x$get() 
    inv<-solve(invatrix, ...)
    x$setinvatrix(inv)
    inv
}
        ## Return a matrix that is the inverse of 'x'
}
