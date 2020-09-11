#' @title Target potential scale reduction factor (PSRF)
#' @description This function calculates the target PSRF for a set of MCMC chains.
#' This is adapted from the more complex version in stableGR:::minESS.
#' @param m Number of MCMC chains, e.g. 3 chains implies m = 3
#' @param p Number of parameters being sampled, e.g. (beta1, beta2, beta3) implies p = 3
#' @param alpha Significance level used to compute ESS; defaults to alpha = 0.05 i.e. 5%
#' @param epsilon Relative precision term; fixing all other elements, as precision is set smaller, sample size increases; defaults to 0.05
#' @examples
#' target.psrf(m = 2, p = 2, alpha = 0.05, epsilon = 0.05)
#' target.psrf(m = 5, p = 2, alpha = 0.10, epsilon = 0.05)
#' @export target.psrf
#' @references D. Vats and C. Knudson. Revisiting the Gelman-Rubin Diagnostic. https://arxiv.org/abs/1812.09384

target.psrf <- function(m, p, alpha = 0.05, epsilon = 0.05) {

  # Calculate the minimum effective sample size for the given input parameters
  Tee <- as.numeric(minESS(p = p, alpha = alpha, epsilon = epsilon))

  # Calculate PSRF
  psrf <- sqrt(1 + m / Tee)

  return(list(psrf = psrf, epsilon = epsilon))
}
