\name{bincap-class}
\Rdversion{1.1}
\docType{class}
\alias{bincap-class}
\title{Class \code{"bincap"} in Package \pkg{HandTill2001}}
\description{
S4 class for a two class response and corresponding (predicted) probabilities.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("bincap", ...)}.
They are used to store a two class response (one of the two  \code{levels} of which is supposed to be \code{true}), the information which of the two \code{levels} of the two class response is thought of as 'true'/'positive'/'present' (the other one would then be thought of as 'false'/'negative'/'absence') and the predicted probabilities that \code{response} is \code{true}.
}
\section{Slots}{
  \describe{
    \item{\code{predicted}:}{Object of class \code{"numeric"}, probabilities for \code{response}. Of length \emph{n}}
    \item{\code{true}:}{Object of class \code{"character"}, indicating which of the two \emph{levels} of \code{response} is to be treated as 'true'/'positive'/'presence' (the other one would then accordingly be called 'false'/'negative'/'absence'). Of length 1.}
    \item{\code{response}:}{Object of class \code{"factor"}, two class observations. Of length \emph{n}.}}
}
\section{Extends}{
Class \code{"\linkS4class{cap}"}, directly.
}
\section{Methods}{
  \describe{
    \item{auc}{\code{signature(object = "bincap")}: ... }
	 }
}
\note{No defaults are set. Especially, you have to explicitly initialize \code{true}, there is no trying to guess it from the \code{levels} of \code{response}.
}
\author{
Andreas Dominik Cullmann
}

\seealso{
 \code{"\link[=cap-class]{class?cap}"}
 , \code{"\link[=multcap-class]{class?multcap}"}
 , \code{"\link[=bincap]{?bincap}"}
}
\examples{
showClass("bincap")
}
\keyword{classes}
