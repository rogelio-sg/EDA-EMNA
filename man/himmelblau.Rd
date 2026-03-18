\name{himmelblau}
\alias{himmelblau}
\title{Himmelblau Multi-modal Function for Benchmarking Optimization Algorithms}

\usage{
himmelblau(x1,x2)
}

\arguments{
\item{x1,x2}{
  A pair of numerical vectors of parameters for which the Himmelblau function is evaluated.
  }
}

\value{
Returns a numeric value, which is the evaluation of the Himmelblau function at the input vectors \code{x1,x2}.
}

\description{
The Himmelblau function is a function of two variables used to test the ability of unconstrained optimization algorithms to find multiple relative minima.
}

\examples{
# Evaluation 1: Global minimum point (one of the four)
x <- c(3, 2)
himmelblau(x[1], x[2])

# Evaluation 2: A point near another minimum
x <- c(-2.8, 3.1)
himmelblau(x[1], x[2])

# Contour Plot: Visualizing the Himmelblau Function
x1 <- seq(-5, 5, length.out = 100)
x2 <- seq(-5, 5, length.out = 100)
# Note: outer expects a vectorized function or a specific structure
z <- outer(x1, x2, Vectorize(himmelblau))
contour(x1, x2, z, nlevels = 30, main = "Contour plot of the Himmelblau Function")

# EDA.mnorm() example
# Using Himmelblau as the objective function for the Estimation of Distribution Algorithm
res = EDA.mnorm(fun = function(x) himmelblau(x[1], x[2]), 
                lower = c(-5, -5), upper = c(5, 5), 
                n = 30, k = 2, tolerance = 0.01, maxiter = 200)
res$sol

# Contour plot: Visualizing solution with EDA.mnorm()
x1 <- seq(-5, 5, length.out = 100)
x2 <- seq(-5, 5, length.out = 100)
z <- outer(x1, x2, Vectorize(himmelblau))
contour(x1, x2, z, nlevels = 30, cex.axis = 0.8, 
        main = "Contour plot of the Himmelblau Function with EDA.mnorm solution")
# Marking the solution found by the algorithm
points(res$sol[1], res$sol[2], col = "red", pch = 19)
}

\references{
Himmelblau, D. M. (1972). \emph{Applied Nonlinear Programming}. McGraw-Hill.
}
