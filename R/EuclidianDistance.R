ed <- function(A){
    sumatory = 0
    for (object in A) {
       sumatory <- (object**2) + sumatory
    }
    return(sqrt(sumatory))
}

