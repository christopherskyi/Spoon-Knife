# test file for working with git on the command line
makeCacheMatrix <- function(m = matrix()){
        im <- NULL # holds the inverse
        
        # Start define function setmatrix -----------------------
        #       resets the value of the main function arg 'm'
        setmatrix <- function(y) {
                m <<- y # local y assigns a new matrix to the top level local variable 'm'
                im <<- NULL
        }
        # End define function set -------------------------
        
        # Start define function get -----------------------
        #       returns the matrix, the value of the main function arg 'm'
        getmatrix <- function() m
        # End define function get -------------------------
        
        # Start define function setmatrixinv -----------------------
        #       resets the value of the main function arg 'im'
        setinvmatrix <- function(invmatrix) im <<- invmatrix
        # End define function setmatrixinv   -----------------------
        
        # Start define function getinvmatrix -----------------------
        #    returns the inverse matrix, he value of the main function arg 'im'
        getinvmatrix <- function() im
        # End define function getinvmatrix   -----------------------
        
        # return a list of pointers to these functions
        # setup is: external function name = internal function
        list(set = setmatrix, get = getmatrix,
             setinv = setinvmatrix,
             getinv = getinvmatrix)
}