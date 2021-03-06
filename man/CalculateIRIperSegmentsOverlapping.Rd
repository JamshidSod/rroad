% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iri.R
\name{CalculateIRIperSegmentsOverlapping}
\alias{CalculateIRIperSegmentsOverlapping}
\title{Computes the IRI for fixed length overlapping segments (e.g. 100 m segments) with an
offset (e.g. 20 m) given a road profile}
\usage{
CalculateIRIperSegmentsOverlapping(profile, iri_coef, segment.length = 100,
  segment.offset = 20)
}
\arguments{
\item{profile}{Road profile (as numeric vector in mm) whose IRI is to be calculated.}

\item{iri_coef}{Set of coefficients for specific sample size (e. g. IRI_COEF_100).}

\item{segment.length}{Distance (in m) for which the IRI is to be calculated. Default is 100 m.}

\item{segment.offset}{Offset (in m) for which the segments will not overlap. Default is 20 m.}
}
\value{
Calculated IRI (m/km) per segment (as numeric) of the given profile.
}
\description{
Computes the IRI for fixed length overlapping segments (e.g. 100 m segments) with an
offset (e.g. 20 m) given a road profile
}
\examples{
profile <- rnorm(10000)
iri <- CalculateIRIperSegments(profile, IRI_COEF_100, 20)
par(mfrow = c(1,2))
plot(profile, type="l",
   xlab="Distance [dm]", ylab="Profile [m]",
   main="Read profile (Laser measurement)")
plot(iri, type="s",
   xlab="Segment (with 20 m offset)", ylab="IRI [m/km]",
   main="International Roughness Index (IRI)\\nsample = 10cm, segment = 20m")
}

