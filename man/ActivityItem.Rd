% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{ActivityItem}
\alias{ActivityItem}
\title{ActivityItem}
\usage{
ActivityItem(...)
}
\arguments{
\item{activityDescription}{\code{React.ReactNode[] | React.ReactNode} \cr An element describing the activity that took place. If no activityDescription, activityDescriptionText, or onRenderActivityDescription are included, no description of the activity is shown.}

\item{activityDescriptionText}{\code{string} \cr Text describing the activity that occurred and naming the people involved in it. Deprecated, use \code{activityDescription} instead.}

\item{activityIcon}{\code{React.ReactNode} \cr An element containing an icon shown next to the activity item.}

\item{activityPersonas}{\verb{Array<IPersonaSharedProps>} \cr If activityIcon is not set, then the persona props in this array will be used as the icon for this activity item.}

\item{animateBeaconSignal}{\code{boolean} \cr Enables/Disables the beacon that radiates from the center of the center of the activity icon. Signals an activity has started.}

\item{beaconColorOne}{\code{string} \cr Beacon color one}

\item{beaconColorTwo}{\code{string} \cr Beacon color two}

\item{comments}{\code{React.ReactNode[] | React.ReactNode} \cr An element containing the text of comments or \@mention messages. If no comments, commentText, or onRenderComments are included, no comments are shown.}

\item{commentText}{\code{string} \cr Text of comments or \@mention messages. Deprecated, use \code{comments} instead.}

\item{isCompact}{\code{boolean} \cr Indicated if the compact styling should be used.}

\item{onRenderActivityDescription}{\verb{IRenderFunction<IActivityItemProps>} \cr A renderer for the description of the current activity.}

\item{onRenderComments}{\verb{IRenderFunction<IActivityItemProps>} \cr A renderer that adds the text of a comment below the activity description.}

\item{onRenderIcon}{\verb{IRenderFunction<IActivityItemProps>} \cr A renderer to create the icon next to the activity item.}

\item{onRenderTimeStamp}{\verb{IRenderFunction<IActivityItemProps>} \cr A renderer adds a time stamp. If not included, timeStamp is shown as plain text below the activity.}

\item{styles}{\code{IActivityItemStyles} \cr Optional styling for the elements within the Activity Item.}

\item{timeStamp}{\code{string | React.ReactNode[] | React.ReactNode} \cr Element shown as a timestamp on this activity. If not included, no timestamp is shown.}
}
\description{
An activity item (\code{ActivityItem}) represents a person's actions, such as making a comment, mentioning someone with an @mention, editing a document, or moving a file.

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/ActivityItem}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\section{Best practices}{
\subsection{Layout}{
\itemize{
\item Use a list of multiple activity items to indicate a history of events relating to a single file, folder, person, or other entity. Alternatively, use a single activity item to indicate the most recent event on an entity.
\item Group multiple similar events occurring near the same time into a single activity item.
}
}
}

\examples{
library(shiny.fluent)

if (interactive()) {
  shinyApp(
    ui = withReact(
      ActivityItem(
        activityDescription = tagList(
          Link(key = 1, "Philippe Lampros"),
          tags$span(key = 2, " commented")
        ),
        activityIcon = Icon(iconName = "Message"),
        comments = tagList(
          tags$span(key = 1, "Hello! I am making a comment.")
        ),
        timeStamp = "Just now"
      )
    ),
    server = function(input, output) {
    }
  )
}
}
