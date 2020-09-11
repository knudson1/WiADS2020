test_that("Target PSRF works", {
  # Provide arguments
  p <- 1
  alpha <- 0.05
  m <- 5
  epsilon <- 0.05

  # Calculate using function
  out1a <- MyFirstPackage::target.psrf(p = p, epsilon = epsilon, m = m, alpha = alpha)

  # Calculate by hand
  Tee <- as.numeric(MyFirstPackage::minESS(p = p, epsilon = epsilon, alpha = alpha))
  psrf <- sqrt(1 + m / Tee)
  out1b <- list(psrf = psrf, epsilon = epsilon)

  # Compare the output
  expect_equal(out1a, out1b)
})
