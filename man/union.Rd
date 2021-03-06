% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/neuronlist_sets.R
\name{union}
\alias{union}
\alias{union.default}
\alias{union.neuronlist}
\title{Find the union of two collections of objects}
\usage{
union(x, y, ...)

\method{union}{default}(x, y, ...)

\method{union}{neuronlist}(x, y, ...)
}
\arguments{
  \item{x}{the first collection to consider.}

  \item{y}{the second collection to consider.}

  \item{...}{additional arguments passed to methods}
}
\value{
A collection of the same mode as \code{x} that contains all
unique elements of \code{x} and \code{y}.
}
\description{
Find the union of two collections of objects
}
\details{
Note that union.default calls base::union to ensure
consistent behaviour for regular vectors.
}
\seealso{
\code{\link[base]{union}}
}

