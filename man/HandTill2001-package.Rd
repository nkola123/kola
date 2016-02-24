\name{HandTill2001-package}
\alias{HandTill2001-package}
\alias{HandTill2001}
\docType{package}
\title{
Multiple Class Area under ROC Curve
}
\description{
  A very lean package implementing merely \eqn{M} given by \cite{Hand and Till (2001)}, Eq. (7).
}
\details{
\eqn{M} given by \cite{Hand and Till (2001)} defines a multiple class 
version of the area under curve of the receiver operating characteristic.
}
\references{
             \cite{David J. Hand and Robert J. Till (2001). A Simple Generalisation of
             the Area Under the ROC Curve for Multiple Class Classification
             Problems. \emph{Machine Learning} \bold{45}(2), p. 171--186. DOI:
             \href{http://dx.doi.org/10.1023/A:1010920819831}{10.1023/A:1010920819831}}.

}
\keyword{AUC, ROC }
\seealso{
  \code{help(package="HandTill2001")}, especially \code{"\link[=auc-methods]{methods?auc}"};
  various packages that calculate two class AUC (\code{"\link[ROCR:performance]{ROCR}"})
  or multiple class AUC (\code{"\link[pROC:pROC-package]{pROC}"}, \code{"\link[caTools:caTools-package]{caTools}"}).
}
\examples{
library(HandTill2001)
data(ht01.multipleclass)
auc( 
  multcap(
     response = ht01.multipleclass$observed
    , predicted = as.matrix(ht01.multipleclass[, levels(ht01.multipleclass$observed)])
    )
    )
}
