% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/neuron-io.R
\name{read.neurons}
\alias{read.neurons}
\title{Read one or more neurons from file to a neuronlist in memory}
\usage{
read.neurons(paths, pattern = NULL, neuronnames = basename, format = NULL,
  nl = NULL, df = NULL, OmitFailures = TRUE, SortOnUpdate = FALSE, ...)
}
\arguments{
  \item{paths}{Paths to neuron input files \emph{or} a
  directory containing neurons \emph{or} a
  \code{\link{neuronlistfh}} object, \emph{or} a zip
  archive containing multiple neurons.}

  \item{pattern}{If paths is a directory, \link{regex} that
  file names must match.}

  \item{neuronnames}{Character vector or function that
  specifies neuron names. See details.}

  \item{format}{File format for neuron (see
  \code{\link{read.neuron}})}

  \item{nl}{An existing neuronlist to be updated (see
  details)}

  \item{df}{Optional data frame containing information
  about each neuron}

  \item{OmitFailures}{Omit failures (when TRUE) or leave an
  NA value in the list}

  \item{SortOnUpdate}{Sort the neuronlist when update adds
  new neurons}

  \item{...}{Additional arguements to passed to read.neuron
  methods}
}
\value{
\code{\link{neuronlist}} object containing the neurons
}
\description{
Read one or more neurons from file to a neuronlist in
memory
}
\details{
This function will cope with the same set of file formats
offered by \code{read.neuron}.

If the \code{paths} argument specifies a (single) directory
then all files in that directory will be read unless an
optional regex pattern is also specified. Similarly, if
\code{paths} specifies a zip archive, all neurons within
the archive will be loaded.

\code{neuronnames} must specify a unique set of names that
will be used as the names of the neurons in the resultant
neuronlist. If \code{neuronnames} is a a function then this
will be applied to the path to each neuron. The default
value is the function \code{basename} which results in each
neuron being named for the input file from which it was
read.

The optional dataframe (\code{df}) detailing each neuron
should have \code{rownames} that match the names of each
neuron. It would also make sense if the same key was
present in a column of the data frame. If the dataframe
contains more rows than neurons, the superfluous rows are
dropped with a warning. If the dataframe is missing rows
for some neurons an error is generated. If SortOnUpdate is
TRUE then updating an existing neuronlist should result in
a new neuronlist with ordering identical to reading all
neurons from scratch.
}
\examples{
\dontrun{
## Read C. elegans neurons from OpenWorm github repository
vds=paste0("https://raw.githubusercontent.com/openworm/CElegansNeuroML/",
  "103d500e066125688aa7ac5eac7e9b2bb4490561/CElegans/generatedNeuroML/VD",
  1:13,".morph.xml")
vdnl=read.neurons(vds)
plot3d(vdnl)
}
}
\seealso{
\code{\link{read.neuron}}

Other neuronlist: \code{\link{as.neuronlistfh}},
\code{\link{as.neuronlistfh.neuronlist}},
\code{\link{is.neuronlistfh}}, \code{\link{neuronlistfh}},
\code{\link{neuronlistfh}}; \code{\link{is.neuronlist}};
\code{\link{neuronlist}}; \code{\link{nlapply}},
\code{\link{nmapply}}; \code{\link{write.neurons}}
}

