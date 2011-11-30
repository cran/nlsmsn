\name{Ultrasonic}
\docType{data}
\alias{Ultrasonic}
\title{ Ultrasonic Calibration }
\description{
 The data is a result of a ultrasonic calibration study perfomed by National Institute of Standard and Technology.
}
\usage{data(Ultrasonic)}
\format{
  A data frame with 214 observations with y as the ultrasonic measuraments and x the metal distance
}

\encoding{latin1}

\source{
  Victor H. Lachos, Dipankar Bandyopadhyay and Aldo M. Garay (2011). "Heteroscedastic nonlinear regression models based on scale mixture of skew-normal distributions". \emph{Statistics -and Probability Letters}, 81, 1208-1217.
}

\author{Aldo Garay \email{amedina@ime.usp.br}, Marcos Prates \email{marcosop@est.ufmg.br} and Victor Lachos \email{hlachos@ime.unicamp.br} }

\examples{
\dontrun{
##Load the data
data(Ultrasonic)

##Define non linear function
nlf<-function(x,betas){
resp<- exp(-betas[1]*x)/(betas[2] + betas[3]*x)
return(resp)
}

##Set the response y and covariate x
y <- Ultrasonic$y
x <- Ultrasonic$x

##Set initial values
z <- x
betas <- c(0.1913, 0.0061, 0.0110)
rho <- -0.1
sigma2 <- 3.2726
shape <- 0.1698
nu <- 4

## Skew.normal regression
analysis.sn <- smsn.nl(y = y, x = x, z = z, betas = betas, sigma2 = sigma2, shape = shape, 
                       rho = rho, nlf = nlf, rho.func = 2, reg.type = "Heteroscedastic", 
                       criteria = TRUE, family = "Skew.normal", iter.max = 200)

## Skew.t regression
analysis.st <- smsn.nl(y = y, x = x, z = z, betas = betas, sigma2 = sigma2, shape = shape, nu = nu, 
                       rho = rho, nlf = nlf, rho.func = 1, reg.type = "He", 
                       criteria = TRUE, family = "Skew.t", iter.max = 200)
}
}
\keyword{datasets}
