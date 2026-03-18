#Función de Miguel -> Función Rosenbrock

rosenbrock <- function(x,y){
  z <- 100*(y - x^2)^2 + (1 - x)^2
  return(z)
}

