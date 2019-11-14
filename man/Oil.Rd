\name{Oil}
\docType{data}
\alias{Oil}
\title{ Oil palm yield}
\description{
Growth and yield of palm oil
}
\usage{data(Oil)}
\format{
  A data frame with 19 observations of oil characteristics
}

\encoding{latin1}

\source{
  Aldo M. Garay, Victor H. Lachos, Carlos A. Abanto-Valle (2011). "Nonlinear regression models based on scale mixture of skew-normal distributions". \emph{Journal of the Korean Stastical Society}, 40, 115-124.
}

\author{Aldo Garay \email{amedina@ime.usp.br}, Marcos Prates \email{marcosop@est.ufmg.br} and Victor Lachos \email{hlachos@ime.unicamp.br} }

\examples{
\dontrun{
##Load the data
data(Oil)

##Define non linear function
nlf<-function(x,betas){
resp<- betas[1]/(1 +betas[2]*exp(-betas[3]*x))
return(resp)
}

##Set the response y and covariate x
y <- Oil$y
x <- Oil$x

##Set initial values
betas <- c(37,4.81,0.78)
sigma2 <- 2.95
shape <- -2
nu <- 3

## Skew.normal regression
analysis.sn <- smsn.nl(y=y, x=x, betas=betas, sigma2=sigma2, 
                       shape = shape, nlf = nlf, criteria = TRUE, 
                       family = "Skew.normal", iter.max = 200)

## Skew.t regression
analysis.st <- smsn.nl(y=y, x=x, betas=betas, sigma2=sigma2, shape = shape, 
                       nu = nu, nlf = nlf, criteria = TRUE, 
                       family = "Skew.t", iter.max = 200)
}
}
\keyword{datasets}
