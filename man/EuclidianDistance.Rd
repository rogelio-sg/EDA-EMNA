\name{ed}
\alias{EuclidianDistance}
\title{Euclidian Distance between n objects in an array}

\usage{
ed(A, B)
}

\arguments{
\item{A}{numeric vector of n samples.}
\item{B}{numeric vector of n samples.}
}

\value{
Returns a numeric value, which is the evaluation of the Euclidian Distance for n size vectors.
}

\description{
The Euclidean distance is the length "in a straight line" between two points in a Euclidean space, calculated by the square root of the sum of the squared differences between their coordinates, based on the Pythagorean theorem. It is the standard metric for measuring proximity in geometry and machine learning.
\deqn{d(P, Q) = \sqrt{\sum_{i=1}^{n} (p_i - q_i)^2}}
}

\examples{
    a <- c(2, 1, 4)
    b <- c(4, 9, 8)
    ed(a, b)
}