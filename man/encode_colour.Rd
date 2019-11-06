% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/encode.R
\name{encode_colour}
\alias{encode_colour}
\title{Encode colours into RGB hex-strings}
\usage{
encode_colour(colour, alpha = NULL, from = "rgb", white = "D65")
}
\arguments{
\item{colour}{A numeric matrix (or an object coercible to one) with colours
encoded in the rows and the different colour space values in the columns. For
all colourspaces except \code{'cmyk'} this will mean a matrix with three columns -
for \code{'cmyk'} it means four columns.}

\item{alpha}{A numeric vector between 0 and 1. Will be recycled to the number
of rows in \code{colour}}

\item{from}{The input colour space. Allowed values are: \code{"cmy"},
\code{"cmyk"}, \code{"hsl"}, \code{"hsb"}, \code{"hsv"}, \code{"lab"} (CIE L*ab), \code{"hunterlab"}
(Hunter Lab), \code{"lch"} (CIE Lch(ab) / polarLAB), \code{"luv"}, \code{"rgb"} (sRGB),
\code{"xyz"}, \code{"yxy"}, or \code{"hcl"} (CIE Lch(uv) / polarLuv)}

\item{white}{The white reference of the input colour space. Will only have an
effect for relative colour spaces such as Lab and luv. Any value accepted by
\code{\link[=as_white_ref]{as_white_ref()}} allowed.}
}
\value{
A character vector with colours encoded as \code{#RRGGBB}
}
\description{
This is a version of \code{\link[grDevices:rgb]{grDevices::rgb()}} that works with the standard colour
format used in farver (matrix or data.frame with colours in rows). It further
support taking input from any colour space.
}
\note{
The output may differ slightly from that of \code{\link[grDevices:rgb]{grDevices::rgb()}} since
\code{rgb()} doesn't round numeric values correctly.
}