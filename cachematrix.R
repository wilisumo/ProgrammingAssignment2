
##Function that create a matrix object than cache it's inverse
makeCacheMatrix <- function(x = matrix()) {

        i<- Null
        
        set<- function(y){
                x<<-y
                i<<-Null
                
        }
        get<- function() x
        setinverse<-function(solve) i<<-solve
        getinverse <-function() i
        list(set=set,get=get, setinverse=setinverse,getinverse=getinverse)
}


## function that computes invers of a given matrix retuned by makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
