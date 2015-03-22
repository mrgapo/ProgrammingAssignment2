
## macke cache matrix is a contrust where we set matrix and later retrive data if needed again
## it is just setter getter function which store data in a way cache do
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


## cache solve takes makeCacheMatrix object and inverse the matrix and return value
## if matrix was inversed before it redurn saved data 
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
