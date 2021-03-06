% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/im3d.R
\name{as.im3d}
\alias{as.im3d}
\alias{as.im3d.im3d}
\alias{as.im3d.matrix}
\title{Convert a suitable object to an im3d object.}
\usage{
as.im3d(x, ...)

\method{as.im3d}{im3d}(x, ...)

\method{as.im3d}{matrix}(x, voxdims, origin = NULL, BoundingBox = NULL, ...)
}
\arguments{
  \item{x}{Object to turn into an im3d}

  \item{...}{Additional arguments to pass to methods.}

  \item{voxdims}{The voxel dimensions}

  \item{origin}{the location (or centre) of the first
  voxel}

  \item{BoundingBox}{Physical extent of image. See the
  details section of \code{\link{boundingbox}}'s help for
  the distinction.}
}
\description{
Convert a suitable object to an im3d object.
}
\details{
At present the only interesting method in \code{nat} is
\code{as.im3d.matrix} which can be used to convert a matrix
of 3D points into a 3D volume representation.

Other than that, this is a largely a placeholder function
with the expectation that other packages may wish to
provide suitable methods.
}
\examples{
# convert a list of neurons into an image volume
im=as.im3d(xyzmatrix(kcs20), voxdims=c(1, 1, 1),
  BoundingBox=c(250, 410, 0, 130, 0, 120))
\dontrun{
write.im3d(im, 'kc20volume.nrrd')
}
}
\seealso{
im3d

Other im3d: \code{\link{boundingbox}},
\code{\link{boundingbox.character}},
\code{\link{boundingbox.default}},
\code{\link{boundingbox.im3d}},
\code{\link{boundingbox.list}},
\code{\link{boundingbox<-}}; \code{\link{ijkpos}},
\code{\link{im3d-coords}}, \code{\link{xyzpos}};
\code{\link{im3d-io}}, \code{\link{read.im3d}},
\code{\link{write.im3d}}; \code{\link{im3d}};
\code{\link{imexpand.grid}}; \code{\link{imslice}};
\code{\link{origin}}; \code{\link{projection}};
\code{\link{threshold}}, \code{\link{threshold.im3d}};
\code{\link{unmask}}; \code{\link{voxdims}},
\code{\link{voxdims.default}}
}

