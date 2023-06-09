% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/navbarLogo.R
\name{navbarLogo}
\alias{navbarLogo}
\title{Add logos to the navbar}
\usage{
navbarLogo(path, url)
}
\arguments{
\item{path}{a string containing the file path for the logo image}

\item{url}{a string containing the URL for the logo link}
}
\description{
Add logos to the navbar
}
\examples{
navbarLogo(path = c("img/janedoe.png", "img/johndoe.png"),
              url = c("https://duckduckgo.com/", "https://duckduckgo.com/"))
}
