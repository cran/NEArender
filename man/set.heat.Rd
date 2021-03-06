% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heatplot.r
\name{set.heat}
\alias{set.heat}
\title{Plot a heatmap of NEA/GSEA output}
\usage{
set.heat(List1, List2, Z, Log = TRUE)
}
\arguments{
\item{List1}{AGS or FGS object that lists members of each individual AGS/FGS.}

\item{List2}{FGS or AGS object that lists members of each individual FGS/AGS.}

\item{Z}{matrix (output of \code{\link{nea.render}} with Z-scores that will define coloring of the heatmap.}

\item{Log}{If \code{TRUE}, then the Z values will be log-transformed (the default).}
}
\description{
Plots a heatmap where width and height of each element reflect respective sizes of input FGS and AGS.
}
\examples{
ags.list <- samples2ags(fantom5.43samples, Ntop=20, method="topnorm")
data(can.sig.go)
fpath <- can.sig.go
fgs.list <- import.gs(fpath)
data(net.kegg)
netpath <- net.kegg
net <- import.net(netpath)
n1 <- nea.render(AGS=ags.list, FGS=fgs.list, NET=net, graph=TRUE)
set.heat(ags.list, fgs.list, n1$z, Log=FALSE)
}
\seealso{
\code{\link{nea.render}}
}
\keyword{internal}
