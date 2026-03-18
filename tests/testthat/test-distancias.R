library(testthat)

source("../../R/EuclidianDistance.R")

test_that("ed calcula la distancia euclidiana exacta entre dos vectores", {
  vector_1 <- c(0, 0)
  vector_2 <- c(3, 4)
  
  # Un triángulo rectángulo de lados 3 y 4 tiene una hipotenusa (distancia) de 5
  expect_equal(ed(vector_1, vector_2), 5)
  
  # La distancia de un vector tridimensional consigo mismo debe ser 0
  expect_equal(ed(c(1, 2, 3), c(1, 2, 3)), 0)
})

test_that("ed lanza un error si los vectores tienen longitudes diferentes", {
  vector_corto <- c(1, 2)
  vector_largo <- c(1, 2, 3)
  
  # expect_error verifica que el código falle y que el mensaje de error coincida
  expect_error(ed(vector_corto, vector_largo), "Both vectors must be same size")
})