## Put comments here that give an overall description of what your
## functions do
##my function can get the inverse of a given matrix
## Write a short comment describing this function
## the makeCacheMatrix function caches the matrix inverse
makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function()x
        setsolve<-function(solve)m<<-solve
        getmean<-function()m
        list(set=set, get=get, setsolve=setsolve,getsolve=getsolve)

}


## Write a short comment describing this function
## The cacheSolve function calculate the inverse of the matrix
cacheSolve <- function(x, ...) {
        m<-x$getsolve()
        if(list.null(m)){
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setsolve(m)
        m
}

