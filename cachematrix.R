## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        #initializing the inverse property
        i<- NULL
        #setting the matrix
        set<- function(matrix){
                m <<- matrix
                i <<- NULL 
        }
        # getting the matrix
        get <- function(){
                m
        }
        #setting the incverse of a matrix
        setinverse <- function(inverse){
                i<<- inverse
        }
        # getting the inversed matrix
        getinverse<- function(){
                i
        }
        #list of above functions -returning
        list(set=set,get=get,setinverse=setinverse
             ,getinverse=getinverse)
        


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
        #returning inverse mtrix if it exists
        if(!is.null(m)){
                message("getting cache data")
                return(m)
        }
        #getting matrix from our object matrix
        data <- x$get()
        #calculating inverse 
        m <- solve(data)
        #setting inverse matrix to the object m 
        x$setinverse(m)
        m
}
