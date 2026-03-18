# @AUTHOR: ENRIQUE GOMEZ - 18/03/26

ed <- function(A){
    sumatory = 0
    for (object in A) {
       sumatory <- (object**2) + sumatory
    }
    return(sqrt(sumatory))
}

