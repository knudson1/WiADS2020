test_that("ESS is integer", {

  # Provide arguments
  p <- 1
  alpha <- 0.05
  epsilon <- 0.05

  #Run function
  out <- MyFirstPackage::minESS(p = p, epsilon = epsilon, alpha = alpha)

  #Check for integer type
  expect_type(out, "integer")
})
