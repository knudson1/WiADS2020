#' @title Minimum Effective Sample Size
#' @description This function calculates minimum effective sample size for a MCMC sample.
#' This is adapted from the more complex version in stableGR:::minESS.
#' @param p Number of parameters being sampled, e.g. (beta1, beta2, beta3) implies p = 3
#' @param alpha Significance level used to compute ESS; defaults to alpha = 0.05 i.e. 5%
#' @param epsilon Relative precision term; fixing all other elements, as precision is set smaller, sample size increases; defaults to 0.05
#' @examples
#' minESS(p = 2, alpha = 0.05, epsilon = 0.05)
#' minESS(p = 2, alpha = 0.10, epsilon = 0.05)
#' @export minESS
#' @import stats
#' @references D. Vats, J. Flegal, & G. Jones 2019. Multivariate output analysis for Markov chain Monte Carlo.
#' Biometrika, Volume 106, Issue 2, June 2019, Pages 321–337, https://doi.org/10.1093/biomet/asz002
#' @references D. Vats and C. Knudson. Revisiting the Gelman-Rubin Diagnostic. https://arxiv.org/abs/1812.09384

minESS <- function(p, alpha = 0.05, epsilon = 0.05) {

  # Calculate the critical value for alpha from the Chi-squared distribution with p degrees of freedom
  crit <- qchisq(alpha, p, lower.tail = FALSE)

  # Implement the formula for calculating the log of the minimum effective sample size from Vats, Flegal, & Jones 2019
  logminESS <- (2 / p) * (log(2) - log(p) - lgamma(p / 2)) + log(pi) - 2 * log(epsilon) + log(crit)

  # Create final sample size by exponentiating and rounding to the nearest integer
  finalESS <- round(exp(logminESS))

  return(finalESS)
}
