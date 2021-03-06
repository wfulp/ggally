% Generated by roxygen2 (4.0.2): do not edit by hand
\name{glyphs}
\alias{glyphs}
\title{Create the data needed to generate a glyph plot.}
\usage{
glyphs(data, x_major, x_minor, y_major, y_minor, polar = FALSE,
  height = rel(0.95), width = rel(0.95), y_scale = identity,
  x_scale = identity)
}
\arguments{
\item{data}{A data frame containing variables named in \code{x_major},
\code{x_minor}, \code{y_major} and \code{y_minor}.}

\item{x_major,x_minor,y_major,y_minor}{The name of the variable (as a
string) for the major and minor x and y axes.  Together, each unique}

\item{polar}{A logical of length 1, specifying whether the glyphs should
be drawn in polar coordinates.  Defaults to \code{FALSE}.}

\item{height,width}{The height and width of each glyph. Defaults to 95\% of
the \code{\link[ggplot2]{resolution}} of the data. Specify the width
absolutely by supplying a numeric vector of length 1, or relative to the}

\item{y_scale,x_scale}{The scaling function to be applied to each set of
minor values within a grid cell.  Defaults to \code{\link{identity}} so
that no scaling is performed.}
}
\description{
Create the data needed to generate a glyph plot.
}
\examples{
data(nasa)
 nasaLate <- nasa[nasa$date >= as.POSIXct("1998-01-01"), ]
 temp.gly <- glyphs(nasaLate, "long", "day", "lat", "surftemp", height=2.5)
 ggplot2::ggplot(temp.gly, ggplot2::aes(gx, gy, group = gid)) +
   add_ref_lines(temp.gly, color = "grey90") +
   add_ref_boxes(temp.gly, color = "grey90") +
   ggplot2::geom_path() +
   ggplot2::theme_bw() +
   ggplot2::labs(x = "", y = "")
}

