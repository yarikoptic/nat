% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/hxsurf.R
\name{subset.hxsurf}
\alias{subset.hxsurf}
\title{Subset hxsurf object to specified regions}
\usage{
\method{subset}{hxsurf}(x, subset = NULL, drop = FALSE, rval = c("hxsurf",
  "names"), ...)
}
\arguments{
  \item{x}{A dotprops object}

  \item{subset}{Character vector specifying regions to
  keep. Interpreted as \code{\link{regex}} if of length 1
  and no fixed match.}

  \item{drop}{Whether to drop unused vertices after
  subsetting}

  \item{rval}{Whether to return a new \code{hxsurf} object
  or just the names of the matching regions}

  \item{...}{Additional parameters (currently ignored)}
}
\value{
subsetted hxsurf object
}
\description{
Subset hxsurf object to specified regions
}
\seealso{
Other hxsurf: \code{\link{as.mesh3d}},
\code{\link{as.mesh3d.hxsurf}}; \code{\link{hxsurf}},
\code{\link{read.hxsurf}}; \code{\link{materials}},
\code{\link{materials.character}},
\code{\link{materials.default}},
\code{\link{materials.hxsurf}};
\code{\link{plot3d.hxsurf}}; \code{\link{write.hxsurf}}
}

