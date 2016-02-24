\name{multcap-class}
\Rdversion{1.1}
\docType{class}
\alias{multcap-class}
\title{Class \code{"multcap"} in Package \pkg{HandTill2001} }
\description{
S4 class for a multiple class response and corresponding (predicted) probabilities.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("multcap", ...)}.
They are used to store a multiple class response and the predicted probabilities for each of the \code{levels(response)}.
}
\section{Slots}{
  \describe{
    \item{\code{predicted}:}{Object of class \code{"matrix"}, probabilities for \code{response}. Of dimension (\emph{n},\code{length(unique(response))}).
    The columns (dimnames()[[2]]) of the prediction matrix have to be named with the values of \code{unique(response)}.This is the default for example with 
    \code{predict.rpart(type="prob",...)}.)
    }
    \item{\code{response}:}{Object of class \code{"factor"}, multiple class observations. Of length \emph{n}.}
  }
}
\section{Extends}{
Class \code{"\linkS4class{cap}"}, directly.
}
\section{Methods}{
  \describe{
    \item{auc}{\code{signature(object = "multcap")}: ... }
	 }
}
\author{
Andreas Dominik Cullmann
}
\seealso{
 \code{"\link[=cap-class]{class?cap}"}
 , \code{"\link[=bincap-class]{class?bincap}"}
 , \code{"\link[=multcap]{?multcap}"}
}
\examples{
showClass("multcap")
}
\keyword{classes}
