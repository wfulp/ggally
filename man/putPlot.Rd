% Generated by roxygen2 (4.0.2): do not edit by hand
\name{putPlot}
\alias{putPlot}
\title{Put Plot}
\usage{
putPlot(plotMatrix, plotObj, rowFromTop, columnFromLeft)
}
\arguments{
\item{plotMatrix}{ggally object to be altered}

\item{plotObj}{ggplot object to be placed}

\item{rowFromTop}{row from the top}

\item{columnFromLeft}{column from the left}
}
\description{
Function to place your own plot in the layout.
}
\examples{
custom_car <- ggpairs(mtcars[,c("mpg","wt","cyl")], upper = "blank", title = "Custom Example")
# ggplot example taken from example(geom_text)
  plot <- ggplot2::ggplot(mtcars, ggplot2::aes(x=wt, y=mpg, label=rownames(mtcars)))
  plot <- plot +
    ggplot2::geom_text(ggplot2::aes(colour=factor(cyl)), size = 3) +
    ggplot2::scale_colour_discrete(l=40)
custom_car <- putPlot(custom_car, plot, 1, 2)
personal_plot <- ggally_text(
  "ggpairs allows you\\nto put in your\\nown plot.\\nLike that one.\\n <---"
)
custom_car <- putPlot(custom_car, personal_plot, 1, 3)
# custom_car
}
\author{
Barret Schloerke \email{schloerke@gmail.com}
}
\keyword{hplot}

