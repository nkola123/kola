\name{auc-methods}
\docType{methods}
\alias{auc-methods}
\alias{auc}
\alias{auc,bincap-method}
\alias{auc,multcap-method}
\title{Methods for Function \code{auc} in Package \pkg{HandTill2001}}
\description{
Calculate area under curve of the receiver operating characteristic for two or more prediction classes.
 }
\section{Methods}{
\describe{

\item{\code{signature(object = "bincap")}}{
calculates the AUC statistic for a two class response following \cite{Hand and Till (2001)}, Eq. (3).
}

\item{\code{signature(object = "multcap")}}{
calculates the AUC statistic for a multiple class response following \cite{Hand and Till (2001)}, Eq. (7).
}
}}
\value{
  An object of class \code{"numeric"}.
}
\details{
 Depending on whether \code{object} is of class \code{"bincap"} or of class \code{"multcap"}, a two class or multiple class AUC is calculated.
}

\references{
             \cite{David J. Hand and Robert J. Till (2001). A Simple Generalisation of
             the Area Under the ROC Curve for Multiple Class Classification
             Problems. \emph{Machine Learning} \bold{45}(2), p. 171--186. DOI:
             \href{http://dx.doi.org/10.1023/A:1010920819831}{10.1023/A:1010920819831}}.

}

\seealso{
 \code{"\link[=bincap-class]{class?bincap}"}, \code{"\link[=multcap-class]{class?multcap}"}
}
\examples{
library(HandTill2001)
data(ht01.twoclass)
data(ht01.multipleclass)
message(" == AUC for a two class response")
\dontrun{
message(" == == ROCR result:")
library(ROCR)
performance(prediction(labels=ht01.twoclass$observed
                       , predictions=ht01.twoclass$predicted
                       )
            , measure = "auc")
}
message(" == == HandTill2001 result:")
auc(bincap(
	    response = as.factor(ht01.twoclass$observed)
	    , predicted = ht01.twoclass$predicted
	    , true = "1"
	    ))
message(" == AUC for a multiple class response")
auc(multcap(
	     response = ht01.multipleclass$observed
	     , predicted = as.matrix(ht01.multipleclass[, levels(ht01.multipleclass$observed)])
	     ))
}
\keyword{methods}
\keyword{auc}

