\name{Juan}
\alias{agregar}
\title{Function for append elements to a list}

\usage{
  agregar(lista, elemento)
}

\arguments{
  \item{lista}{
    A list of elements.
  }
  \item{elemento}{
    An element to append to the list.
  }
}

\value{
  Returns a list that contains the new element at final position.
}

\description{
  The agregar function is a simple way to append an element to a list.
}

\examples{
  agregar <- function(lista, elemento) {
    lista <- c(lista, elemento)
    return(lista)
  }
  
  numeros <- list(1, 2, 3, 4)
  numeros <- agregar(numeros, 5) 
}

\references{
  
}
