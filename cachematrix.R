
##Function that create a matrix object than cache it's inverse
makeCacheMatrix <- function(x = matrix()) {

        i<- Null#declarate variable that store result of inversion to return
        
        ##function to set a matrix to a object
        set<- function(y){ 
                x<<-y 
                i<<-Null ##initialise i to null
                
        }
        get<- function() x ##return input matrix
        setinverse<-function(solve) i<<-solve##set inversed matrix
        getinverse <-function() i ##return result of inverse matrix
        #return a list that contains all functions for invocation
        list(set=set,get=get, setinverse=setinverse,getinverse=getinverse)
}


## function that computes inverse of a given matrix retuned by makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()#get inverse result from a object x
        #evaluated if inverse result are there
        if(!is.null(m)){
                message("getting cache data")
                return(m)#return inverse result
        }
        data<-x$get#get matrix 
        m<-solve(data,...)#calculate inverse matrix and asign result to m
        x$setinverse(m)#set inverse matrix result value 
        m #return result
        
        
}
