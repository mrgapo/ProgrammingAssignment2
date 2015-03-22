## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## macke cache matrix is a contrust where we set matrix and later retrive data if needed agai
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
 
  set <- function(x) {
    m <<- x
    i <<- NULL
  }
  
  get <- function(m)
  
  setinverse <- function(inverse) i <<- inverse
  
  getinverse <- function() i
  
  list(set = set, get = get,
       ##setinverse = setinverse,
       getinverse = getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data)
  x$setmean(i)
  i
}
