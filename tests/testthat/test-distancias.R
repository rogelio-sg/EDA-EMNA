library(testthat)

source("../../R/EuclidianDistance.R")

# 3. Escribimos las pruebas
test_that("EuclidianDistance calcula correctamente la magnitud de un solo vector", {
  vector_a <- c(3, 4)
  
  # Matemáticamente, la magnitud de (3,4) es sqrt(3^2 + 4^2) = 5
  resultado <- EuclidianDistance(vector_a)
  
  # Verificamos que el resultado sea exactamente 5
  expect_equal(resultado, 5)
})

test_that("EuclidianDistance calcula la distancia correcta entre dos vectores", {
  vector_a <- c(0, 0)
  vector_b <- c(3, 4)
  
  # La distancia entre el origen (0,0) y el punto (3,4) también es 5
  resultado <- EuclidianDistance(vector_a, vector_b)
  
  expect_equal(resultado, 5)
})