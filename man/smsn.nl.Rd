\name{smsn.nl}
\alias{smsn.nl}
\title{ Fit univariate NL-SMSN regression }
\description{
Return EM algorithm output for NL-SMSN regression for both "Homoscedastic" and "Heteroscedastic" (univaritate case, p=1).
}
\usage{
smsn.nl(y, x = NULL, z = NULL, betas = NULL, sigma2 = NULL, shape = NULL, rho = NULL, 
        nu = NULL, nlf = NULL, rho.func = 1, reg.type = "Homoscedastic", criteria = FALSE, 
        family = "Skew.t", error = 1e-05, iter.max = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{ the response vector }
  \item{x}{ the independent covariates }
  \item{z}{ the independent covariates for sigma2. "Heteroscedastic" model ONLY! }
  \item{betas}{ regression coefficient(s) vector }
  \item{sigma2}{ initial value for the scale parameter }
  \item{shape}{ initial value for the skewness parameter }
  \item{rho}{ initial value for "Heteroscedastic" coefficient rho. "Heteroscedastic" model ONLY! }
  \item{nu}{ the parameter of the scale variable (vector or scalar) of the SMSN family (kurtosis parameter). 
             For the "Skew.cn" must be a vector of length 2 and values in (0,1) }
  \item{nlf}{ non linear function for the regression }
  \item{rho.func}{ Choose the type of heteroscedasticity for sigma2. If rho.func == 1 ( f(z,rho) = exp(z*rho) ) and 
                   rho.func == 2 ( f(z,rho) = z^rho ). }
  \item{reg.type}{ the type of possible regression: "Homoscedastic" or "Ho"; "Heteroscedastic" or "He". }
  \item{criteria}{ if TRUE, loglik, AIC, BIC will be calculated }
  \item{family}{ distribution famility to be used in fitting ("t", "Skew.t", "Skew.cn", "Skew.slash", "Skew.normal", "Normal") }
  \item{error}{ the covergence maximum error }
  \item{iter.max}{ maximum iterations of the EM algorithm }
}

\value{
  Estimated values of the location, scale, skewness, regression coefficients and "Heteroscedastic" coefficient 
  (when reg.type = "He"). 
}

\references{
  Aldo M. Garay, Victor H. Lachos, Carlos A. Abanto-Valle (2011). "Nonlinear regression models based on scale mixture of skew-normal distributions". \emph{Journal of the Korean Stastical Society}, 40, 115-124.\\

  Victor H. Lachos, Dipankar Bandyopadhyay and Aldo M. Garay (2011). "Heteroscedastic nonlinear regression models based on scale mixture of skew-normal distributions". \emph{Statistics -and Probability Letters}, 81, 1208-1217.
}

\author{Aldo Garay \email{amedina@ime.usp.br}, Marcos Prates \email{marcosop@est.ufmg.br} and Victor Lachos \email{hlachos@ime.unicamp.br} }

\examples{ ##see examples in \code{\link{Oil}} and \code{\link{Ultrasonic}} 
}

\keyword{ nonlinear regression }
