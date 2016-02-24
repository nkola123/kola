\name{ht01.twoclass}
\alias{ht01.twoclass}
\docType{data}
\title{ht01.twoclass data in Package \pkg{HandTill2001}}
\description{two class data and probability predictions thereof.}
\usage{data(ht01.twoclass)}
\format{
  A data frame with 189 observations on the following 2 variables.
  \describe{
    \item{\code{observed}}{a numeric vector}
    \item{\code{predicted}}{a numeric vector}
  }
}
\details{
two class data ('observed': \code{MASS::birthwt$low}) and probability predictions 

(\code{predict(birthwt.step2, type = "response")}, cf. Venables and Ripley (2002), pp. 195f and \sQuote{Source}) from \code{stats::glm}.
}
\source{
\preformatted{
## From: A two class data example Venables and Ripley pp. 194--199
library(MASS); data("birthwt"); attach(birthwt)
race <- (factor(race, labels = c("white", "black", "other")))
ptd <- factor(ptl > 0)
ftv <- factor(ftv)
levels(ftv)[-(1:2)] <- "2+"
bwt <- data.frame(low = factor(low), age, lwt, race, smoke = (smoke > 0)
	, ptd, ht = (ht > 0), ui = (ui > 0), ftv)
detach(birthwt)
birthwt.glm <- glm(low ~ ., family=binomial(link=logit), data=bwt)
birthwt.step2 <- stepAIC(birthwt.glm, ~ .^2 
			 + I(scale(age)^2) + I(scale(lwt)^2), trace = F )
ht01.twoclass <- data.frame(observed = bwt$low
			    , predicted = predict(birthwt.step2
			    , type = "response"))
write.table(ht01.twoclass, file = "ht01.twoclass.txt")
  }
}
\references{
Venables, W. N and Ripley, B. D. (2002), \emph{Modern Applied Statistics with S} (4th edition). Springer, ISBN 0-387-95457-0

}
\examples{
library(HandTill2001)
data(ht01.twoclass)
str(ht01.twoclass)
}
\keyword{datasets}
