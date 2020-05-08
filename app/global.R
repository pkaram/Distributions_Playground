library(shiny)
library(shinythemes)
library(ggplot2)
library(dplyr)
library(gbRd)
library(readr)

#define all functions as a list
function_list <- list(
  Normal=c(rnorm,'rnorm'),
  Poisson=c(rpois,'rpois'),
  Beta=c(rbeta,'rbeta'),
  Binomial=c(rbinom,'rbinom'),
  Cauchy=c(rcauchy,'rcauchy'),
  Chi_squared=c(rchisq,'rchisq'),
  Exponential=c(rexp,'rexp'),
  F_distribution=c(rf,'rf'),
  "Gamma "=c(rgamma,'rgamma'),
  Geometric=c(rgeom,'rgeom'),
  Hypergeometric=c(rhyper,'rhyper'),
  Lognormal=c(rlnorm,'rlnorm'),
  Negative_Binomial=c(rnbinom,'rnbinom'),
  Students_t=c(rt,'rt'),
  Uniform=c(runif,'runif'),
  Weibull=c(rweibull,'rweibull')
)
