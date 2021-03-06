% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSEMM_setup.R
\name{plotSEMM_setup}
\alias{plotSEMM_setup}
\title{Set up function for plotSEMM}
\usage{
plotSEMM_setup(pi, alpha1, alpha2, beta21, psi11, psi22, points = 50)
}
\arguments{
\item{pi}{Vector: \emph{K} marginal class probabilities.}

\item{alpha1}{Vector: \emph{K} means of the latent predictor.}

\item{alpha2}{Vector: \emph{K} inercepts slopes from the within-class regression
of the latent outcome on the latent predictor.}

\item{beta21}{Vector: \emph{K} slopes from the within-class regression of the
latent outcome on the latent predictor.}

\item{psi11}{Vector: \emph{K} within-class variances of the latent predictor.}

\item{psi22}{Vector: \emph{K} within-class variances of the latent outcome.}

\item{points}{number of points to use. Default is 50}
}
\description{
Takes user input generated from SEMM software such as Mplus (Muthen & Muthen, 2007),
Mx (Neale, Boker, Xie & Maes, 2004) or MECOSA (Arminger, Wittenberg, & Schepers, 1996)
in Gauss and generates model predicted data for processing in graphing functions
\code{plotSEMM_contour} and \code{plotSEMM_probability}. Reterns a \code{data.frame}
to be passed to other functions in the package.
}
\details{
All the parameter estimates required by the arguments are generated from software with
the capability of estimating SEMMs.
}
\examples{
\dontrun{
# 2 class empirical example on positive emotions and heuristic processing
# in Pek, Sterba, Kok & Bauer (2009)
pi <- c(0.602, 0.398)

alpha1 <- c(3.529, 2.317)

alpha2 <- c(0.02, 0.336)

beta21 <- c(0.152, 0.053)

psi11 <- c(0.265, 0.265)

psi22 <- c(0.023, 0.023)

plotobj <- plotSEMM_setup(pi, alpha1, alpha2, beta21, psi11, psi22)
}
}
\references{
Pek, J. & Chalmers, R. P. (2015). Diagnosing Nonlinearity With Confidence Envelopes for a
Semiparametric Approach to Modeling Bivariate Nonlinear Relations Among Latent Variables.
\emph{Structural Equation Modeling, 22}, 288-293. \doi{10.1080/10705511.2014.937790}

Pek, J., Chalmers, R. P., Kok B. E., & Losardo, D. (2015). Visualizing Confidence Bands for
Semiparametrically Estimated Nonlinear Relations among Latent Variables.
\emph{Journal of Educational and Behavioral Statistics, 40}, 402-423. \doi{10.3102/1076998615589129}
}
\seealso{
\code{\link{plotSEMM_contour}},\code{\link{plotSEMM_probability}}
}
\author{
Bethany Kok and Phil Chalmers \email{rphilip.chalmers@gmail.com}
}
\keyword{array}
\keyword{data}
\keyword{dplot}
\keyword{manip}
