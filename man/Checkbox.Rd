% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{Checkbox}
\alias{Checkbox}
\alias{updateCheckbox}
\title{Checkbox}
\usage{
Checkbox(input_id, value = default_value, ...)

updateCheckbox(session, input_id, value = NULL, ...)
}
\arguments{
\item{ariaDescribedBy}{\code{string} \cr ID for element that provides extended information for the checkbox.}

\item{ariaLabel}{\code{string} \cr Accessible label for the checkbox.}

\item{ariaLabelledBy}{\code{string} \cr ID for element that contains label information for the checkbox.}

\item{ariaPositionInSet}{\code{number} \cr The position in the parent set (if in a set) for aria-posinset.}

\item{ariaSetSize}{\code{number} \cr The total size of the parent set (if in a set) for aria-setsize.}

\item{boxSide}{\code{'start' | 'end'} \cr Allows you to set the checkbox to be at the before (start) or after (end) the label.}

\item{checked}{\code{boolean} \cr Checked state. Mutually exclusive to "defaultChecked". Use this if you control the checked state at a higher level and plan to pass in the correct value based on handling onChange events and re-rendering.}

\item{checkmarkIconProps}{\code{IIconProps} \cr Custom icon props for the check mark rendered by the checkbox}

\item{className}{\code{string} \cr Additional class name to provide on the root element, in addition to the ms-Checkbox class.}

\item{componentRef}{\verb{IRefObject<ICheckbox>} \cr Optional callback to access the ICheckbox interface. Use this instead of ref for accessing the public methods and properties of the component.}

\item{defaultChecked}{\code{boolean} \cr Default checked state. Mutually exclusive to "checked". Use this if you want an uncontrolled component, and want the Checkbox instance to maintain its own state.}

\item{defaultIndeterminate}{\code{boolean} \cr Optional uncontrolled indeterminate visual state for checkbox. Setting indeterminate state takes visual precedence over checked or defaultChecked props given but does not affect checked state. This is not a toggleable state. On load the checkbox will receive indeterminate visual state and after the user's first click it will be removed exposing the true state of the checkbox.}

\item{disabled}{\code{boolean} \cr Disabled state of the checkbox.}

\item{indeterminate}{\code{boolean} \cr Optional controlled indeterminate visual state for checkbox. Setting indeterminate state takes visual precedence over checked or defaultChecked props given but does not affect checked state. This should not be a toggleable state. On load the checkbox will receive indeterminate visual state and after the first user click it should be removed by your supplied onChange callback function exposing the true state of the checkbox.}

\item{inputProps}{\verb{React.ButtonHTMLAttributes<HTMLElement | HTMLButtonElement>} \cr Optional input props that will be mixed into the input element, \emph{before} other props are applied. This allows you to extend the input element with additional attributes, such as data-automation-id needed for automation. Note that if you provide, for example, "disabled" as well as "inputProps.disabled", the former will take precedence over the later.}

\item{keytipProps}{\code{IKeytipProps} \cr Optional keytip for this checkbox}

\item{label}{\code{string} \cr Label to display next to the checkbox.}

\item{onChange}{\verb{(ev?: React.FormEvent<HTMLElement | HTMLInputElement>, checked?: boolean) => void} \cr Callback that is called when the checked value has changed.}

\item{onRenderLabel}{\verb{IRenderFunction<ICheckboxProps>} \cr Custom render function for the label.}

\item{styles}{\verb{IStyleFunctionOrObject<ICheckboxStyleProps, ICheckboxStyles>} \cr Call to provide customized styling that will layer on top of the variant rules.}

\item{theme}{\code{ITheme} \cr Theme provided by HOC.}
}
\description{
Check boxes (\code{Checkbox}) give people a way to select one or more items from a group, or switch between two mutually exclusive options (checked or unchecked, on or off).

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/Checkbox}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\section{Best practices}{
\subsection{Layout}{
\itemize{
\item Use a single check box when there's only one selection to make or choice to confirm. Selecting a blank check box selects it. Selecting it again clears the check box.
\item Use multiple check boxes when one or more options can be selected from a group. Unlike radio buttons, selecting one check box will not clear another check box.
}
}

\subsection{Content}{
\itemize{
\item Separate two groups of check boxes with headings rather than positioning them one after the other.
\item Use sentence-style capitalization—only capitalize the first word. For more info, see \href{https://docs.microsoft.com/style-guide/capitalization}{Capitalization} in the Microsoft Writing Style Guide.
\item Don't use end punctuation (unless the check box label absolutely requires multiple sentences).
\item Use a sentence fragment for the label, rather than a full sentence.
\item Make it easy for people to understand what will happen if they select or clear a check box.
}
}
}

\examples{
library(shiny.fluent)

if (interactive()) {
  shinyApp(
    ui = withReact(
      div(
        Checkbox("checkbox", FALSE),
        textOutput("checkboxValue")
      )
    ),
    server = function(input, output) {
      output$checkboxValue <- renderText({
        sprintf("Value: \%s", input$checkbox)
      })
    }
  )
}
}
