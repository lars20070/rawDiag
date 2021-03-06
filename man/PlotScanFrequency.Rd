% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rawDiag.R
\name{PlotScanFrequency}
\alias{PlotScanFrequency}
\alias{scan.frequency.violin}
\alias{scan.frequency.overlay}
\title{scan frequency plot}
\usage{
PlotScanFrequency(x, method = "trellis")
}
\arguments{
\item{x}{a \code{\link{data.frame}} fullfilling the \code{\link{is.rawDiag}} column naming criteria.}

\item{method}{a character 'trellis', 'violin' or 'overlay'.}
}
\value{
a trellis like plot object displaying the scan frequency of a mass spec run
}
\description{
scan frequency plot
}
