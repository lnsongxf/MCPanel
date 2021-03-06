% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EN.R
\name{en_mp_rows}
\alias{en_mp_rows}
\title{Computing Elastic Net Estimator when multiple units are missing.
The underlying algorithm is glmnet package in R.
It is worth noting that this package was written by Friedman et. al.}
\usage{
en_mp_rows(M, mask, num_folds = 5, num_lam = 100L, num_alpha = 40L)
}
\arguments{
\item{M}{Matrix of observed entries. The input should be N (number of units) by T (number of time periods).}

\item{mask}{Binary mask with the same shape as M containing observed entries.}

\item{num_folds}{Optional parameter on the number of folds for cross-validation. Default is 5.}

\item{num_lam}{Optional parameter on the number of lambda values (weight penalties). Default is 100.}

\item{num_alpha}{Optional parameter on the number of alpha values (shape parameter). Default is 40.}
}
\value{
The matrix with all missing entries filled.
}
\description{
Computing Elastic Net Estimator when multiple units are missing.
The underlying algorithm is glmnet package in R.
It is worth noting that this package was written by Friedman et. al.
}
\examples{
en_mp_rows(matrix(c(1,2,3,4),2,2), matrix(c(1,1,1,0),2,2))
}
\seealso{
\code{\link[glmnet]{cv.glmnet}}, written by Jerome Friedman, Trevor Hastie, Noah Simon, Junyang Qian, and Rob Tibshirani
}
