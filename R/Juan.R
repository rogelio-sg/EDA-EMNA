
agregar <- function(lista, elemento) {
  lista <- c(lista, elemento)
  return(lista)
}

numeros <- list(1, 2, 3, 4)
numeros <- agregar(numeros, 5) 
