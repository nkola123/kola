\name{multcap}
\alias{multcap}
\title{
a ui-constructor for Class \code{"multcap"} in Package \pkg{HandTill2001} 
}
\description{
\code{multcap(\dots)} is an alias to \code{new("multcap", \dots)}.
}
\usage{
multcap(response, predicted)
}
\arguments{
  \item{response}{Object of class \code{"factor"}.}
  \item{predicted}{Object of class \code{"matrix"}.}
}
\details{
There is no casting or conversion of data. \code{multcap(\dots)} is just an alias to \code{new("multcap", \dots)}.
}
\value{
  An object of class \code{"bincap"}
}
\author{
Andreas Dominik Cullmann
}
\seealso{
\code{"\link[=multcap-class]{class?multcap}"}
}
\examples{
library(HandTill2001)
data(ht01.multipleclass)
str(ht01.multipleclass$observed)
message("note that ht01.multipleclass$observed is a factor; we do not have to convert it.")
multcap(
     response = ht01.multipleclass$observed
    , predicted = as.matrix(ht01.multipleclass[, levels(ht01.multipleclass$observed)])
    )

}
\keyword{ui-constructor}
