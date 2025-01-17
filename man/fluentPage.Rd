% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extensions.R
\name{fluentPage}
\alias{fluentPage}
\title{Basic Fluent UI page}
\usage{
fluentPage(..., suppress_bootstrap = TRUE)
}
\arguments{
\item{...}{The contents of the document body.}

\item{suppress_bootstrap}{Whether to suppress Bootstrap.}
}
\description{
Creates a Fluent UI page with sensible defaults (included Fabric CSS classes, proper class given
to the body tag, suppressed Bootstrap).
}
\details{
You can also use shiny.fluent directly, without using this function. You still need to use
\code{\link{withReact}} or \code{\link{reactOutput}} to insert React components.

The Bootstrap library is suppressed by default,
as it doesn't work well with Fluent UI in general.
}
