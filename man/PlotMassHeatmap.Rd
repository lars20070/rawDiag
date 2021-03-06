% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rawDiag.R
\name{PlotMassHeatmap}
\alias{PlotMassHeatmap}
\title{mass heatmap}
\usage{
PlotMassHeatmap(x, method = "trellis", bins = 80)
}
\arguments{
\item{x}{a \code{\link{data.frame}} fullfilling the \code{\link{is.rawDiag}} column naming criteria.}

\item{method}{plot method.}

\item{bins}{number of bins in both vertical and horizontal directions. default is 80.}
}
\value{
a gglot object.
}
\description{
graphs a deconvoluted heatmap of the StartTime
}
