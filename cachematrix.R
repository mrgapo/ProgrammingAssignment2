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
  
  get <- function() x
  
  seti <- function(inverse){ i <<- inverse }
  
  geti <- function() i
  
  list(set = set, get = get,
       seti = seti,
       geti = geti)
  
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$geti()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data)
  x$seti(i)
  i
}
