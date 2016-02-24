\name{ht01.multipleclass}
\alias{ht01.multipleclass}
\docType{data}
\title{ht01.multipleclass data in Package \pkg{HandTill2001}}
\description{multiple class data and probability predictions thereof.}
\usage{data(ht01.multipleclass)}
\format{
  A data frame with 214 observations on the following 7 variables.
  \describe{
    \item{\code{observed}}{a factor with levels \code{Con} \code{Head} \code{Tabl} \code{Veh} \code{WinF} \code{WinNF}}
    \item{\code{WinF}}{a numeric vector}
    \item{\code{WinNF}}{a numeric vector}
    \item{\code{Veh}}{a numeric vector}
    \item{\code{Con}}{a numeric vector}
    \item{\code{Tabl}}{a numeric vector}
    \item{\code{Head}}{a numeric vector}
  }
}
\details{
multiple class data ('observed': \code{MASS::fgl$type}) and probability predictions (\code{predict(fgl.rp4)}, cf. Venables and Ripley (2002), p. 264 and \sQuote{Source}) from \code{rpart::rpart}.

}
\source{
\preformatted{
## From: Forensic glass example Venables and Ripley (2002) pp. 261--265
library(MASS);library(rpart);data(fgl);set.seed(123)
fgl.rp4 <- rpart(type ~ ., data = fgl, cp = 0.03
                 , parms = list(split = "information"))
ht01.multipleclass <- data.frame(observed = fgl$type, predict(fgl.rp4))
write.table(ht01.multipleclass, file = "ht01.multipleclass.txt") 
}
}
\references{
 Venables, W. N and Ripley, B. D. (2002), \emph{Modern Applied Statistics with S} (4th edition). Springer, ISBN 0-387-95457-0
}
\examples{
library(HandTill2001)
data(ht01.multipleclass)
str(ht01.multipleclass)
}
\keyword{datasets}
