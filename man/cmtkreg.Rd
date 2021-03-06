% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/cmtkreg.R
\name{cmtkreg}
\alias{as.cmtkreg}
\alias{cmtkreg}
\alias{is.cmtkreg}
\title{Create and test cmtkreg objects that specify path to a CMTK registration}
\usage{
cmtkreg(x, returnDir = TRUE)

as.cmtkreg(x)

is.cmtkreg(x, filecheck = c("none", "exists", "magic"))
}
\arguments{
  \item{x}{Path to a cmtk registration (either plain
  character vector or cmtkreg object)}

  \item{returnDir}{Whether to return the registration
  directory (default) or the actual file containing the
  registration}

  \item{filecheck}{Whether to check object class only
  (default: 'none') or find amd check if registration file
  \strong{exists} or check \strong{magic} value in first
  line of file.}
}
\description{
\code{cmtkreg} creates an object of class \code{cmtkreg}
that describes one (or more)
\href{www.nitrc.org/projects/cmtk/}{CMTK} registrations.
This is simply a character vector that also has class
cmtkreg.

\code{as.cmtkreg} adds class \code{cmtkreg} to objects that
do not already inherit from it.

\code{is.cmtkreg} checks if an object is a cmtk
registration either by checking class (default), or
inspecting file.
}

