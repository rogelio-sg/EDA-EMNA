# @AUTHOR: ENRIQUE GOMEZ - 18/03/26

ed <- function(A, B){
    if (length(A) != length(B)) {
       stop("Both vectors must be same size")
    }
    return(sqrt(sum((A - B)^2)))
}
