% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/S3methods.R
\name{plot.pkgdepR}
\alias{plot.pkgdepR}
\title{Visualizing package dependencies}
\usage{
\method{plot}{pkgdepR}(
  x,
  width = NULL,
  height = NULL,
  main = NULL,
  submain = NULL,
  alpha = 0.8,
  footer = NULL,
  background = "rgba(0, 0, 0, 0)",
  n,
  m,
  ...
)
}
\arguments{
\item{x}{An object of class \code{pkgdepR}.}

\item{width}{The width of the \code{vis.js} render.}

\item{height}{The height of the \code{vis.js} render.}

\item{main}{The title. To remove the title, pass \code{list(text = NULL)}.}

\item{submain}{The subtitle. To remove the subtitle, pass \code{list(text = NULL)}.}

\item{alpha}{A transparency value to use for colors. Must be between 0 and 1.}

\item{footer}{A character or a named list. See \link[visNetwork]{visNetwork}.}

\item{background}{A background color. See \link[visNetwork]{visNetwork}.}

\item{n}{(Optional) The number of colours to request from \link[viridisLite]{viridis}. Allows the user to set a more granular palette.}

\item{m}{(Optional) The subset of colours of the custom palette (specified by \code{n}) to use in the plot.}

\item{...}{Other arguments passed onto \link[viridisLite]{viridis}.}
}
\value{
An object of classes \code{visNetwork} and \code{htmlwidget}.
}
\description{
This function is a simple wrapper for plotting a network visualization using \link[visNetwork]{visNetwork}.
}
\examples{
library(pkgdepR)
deps(pkg = "pkgdepR") \%>\% plot(option = "E", direction = -1)
deps(pkg = "pkgdepR") \%>\% plot(option = "D", alpha = 0.5, main = list(text = NULL))
deps(pkg = "pkgdepR") \%>\% 
  plot(option = "D", alpha = 0.8, main = list(text = NULL)) \%>\% 
  visNetwork::visInteraction(dragNodes = FALSE)
}
