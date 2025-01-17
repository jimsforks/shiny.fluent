% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{SpinButton}
\alias{SpinButton}
\alias{updateSpinButton}
\title{SpinButton}
\usage{
SpinButton(input_id, value = default_value, ...)

updateSpinButton(session, input_id, value = NULL, ...)
}
\arguments{
\item{value}{\code{string} \cr Current value of the control.

Use this if you intend to pass in a new value as a result of change events. Mutually exclusive with \code{defaultValue}.}

\item{ariaDescribedBy}{\code{string} \cr ID of a label which describes the control, if not using the default label.}

\item{ariaLabel}{\code{string} \cr A description of the control for the benefit of screen reader users.}

\item{ariaPositionInSet}{\code{number} \cr The position in the parent set (if in a set).}

\item{ariaSetSize}{\code{number} \cr The total size of the parent set (if in a set).}

\item{ariaValueNow}{\code{number} \cr Sets the control's aria-valuenow. This is the numeric form of \code{value}. Providing this only makes sense when using as a controlled component.}

\item{ariaValueText}{\code{string} \cr}

\item{className}{\code{string} \cr Custom className for the control.}

\item{componentRef}{\verb{IRefObject<ISpinButton>} \cr Gets the component ref.}

\item{decrementButtonAriaLabel}{\code{string} \cr Accessible label text for the decrement button (for screen reader users).}

\item{decrementButtonIcon}{\code{IIconProps} \cr Custom props for the decrement button.}

\item{defaultValue}{\code{string} \cr Initial value of the control. Updates to this prop will not be respected.

Use this if you intend for the SpinButton to be an uncontrolled component which maintains its own value. Mutually exclusive with \code{value}.}

\item{disabled}{\code{boolean} \cr Whether or not the control is disabled.}

\item{downArrowButtonStyles}{\verb{Partial<IButtonStyles>} \cr Custom styles for the down arrow button.

Note: The buttons are in a checked state when arrow keys are used to incremenent/decrement the SpinButton. Use \code{rootChecked} instead of \code{rootPressed} for styling when that is the case.}

\item{getClassNames}{\verb{(theme: ITheme, disabled: boolean, isFocused: boolean, keyboardSpinDirection: KeyboardSpinDirection, labelPosition?: Position, className?: string) => ISpinButtonClassNames} \cr Custom function for providing the classNames for the control. Can be used to provide all styles for the component instead of applying them on top of the default styles.}

\item{iconButtonProps}{\code{IButtonProps} \cr Additional props for the up and down arrow buttons.}

\item{iconProps}{\code{IIconProps} \cr Props for an icon to display alongside the control's label.}

\item{incrementButtonAriaLabel}{\code{string} \cr Accessible label text for the increment button (for screen reader users).}

\item{incrementButtonIcon}{\code{IIconProps} \cr Custom props for the increment button.}

\item{inputProps}{\verb{React.InputHTMLAttributes<HTMLElement | HTMLInputElement>} \cr Additional props for the input field.}

\item{keytipProps}{\code{IKeytipProps} \cr Keytip for the control.}

\item{label}{\code{string} \cr Descriptive label for the control.}

\item{labelPosition}{\code{Position} \cr Where to position the control's label.}

\item{max}{\code{number} \cr Max value of the control.}

\item{min}{\code{number} \cr Min value of the control.}

\item{onBlur}{\verb{React.FocusEventHandler<HTMLInputElement>} \cr Callback for when the control loses focus.}

\item{onDecrement}{\verb{(value: string, event?: React.MouseEvent<HTMLElement> | React.KeyboardEvent<HTMLElement>) => string | void} \cr Callback for when the decrement button or down arrow key is pressed.}

\item{onFocus}{\verb{React.FocusEventHandler<HTMLInputElement>} \cr Callback for when the user focuses the control.}

\item{onIncrement}{\verb{(value: string, event?: React.MouseEvent<HTMLElement> | React.KeyboardEvent<HTMLElement>) => string | void} \cr Callback for when the increment button or up arrow key is pressed.}

\item{onValidate}{\verb{(value: string, event?: React.SyntheticEvent<HTMLElement>) => string | void} \cr Callback for when the entered value should be validated.}

\item{precision}{\code{number} \cr How many decimal places the value should be rounded to.

The default is calculated based on the precision of \code{step}: i.e. if step = 1, precision = 0. step = 0.0089, precision = 4. step = 300, precision = 2. step = 23.00, precision = 2.}

\item{step}{\code{number} \cr Difference between two adjacent values of the control. This value is used to calculate the precision of the input if no \code{precision} is given. The precision calculated this way will always be \>= 0.}

\item{styles}{\verb{Partial<ISpinButtonStyles>} \cr Custom styling for individual elements within the control.}

\item{theme}{\code{ITheme} \cr Theme provided by HOC.}

\item{title}{\code{string} \cr A more descriptive title for the control, visible on its tooltip.}

\item{upArrowButtonStyles}{\verb{Partial<IButtonStyles>} \cr Custom styles for the up arrow button.

Note: The buttons are in a checked state when arrow keys are used to incremenent/decrement the SpinButton. Use \code{rootChecked} instead of \code{rootPressed} for styling when that is the case.}
}
\description{
A spin button (\code{SpinButton}) allows someone to incrementally adjust a value in small steps. It’s mainly used for numeric values, but other values are supported too.

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/SpinButton}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\section{Best practices}{
\subsection{Layout}{
\itemize{
\item Use a spin button when you need to incrementally change a value.
\item Use a spin button when values are tied to a unit of measure.
\item Don't use a spin button for binary settings.
\item Don't use a spin button for a range of three values or less.
\item Place labels to the left of the spin button control. For example, "Length of ruler (cm)".
\item Spin button width should adjust to fit the number values.
}
}

\subsection{Content}{
\itemize{
\item Include a label indicating what value the spin button changes.
}
}
}

\examples{
library(shiny.fluent)

if (interactive()) {
  shinyApp(
    ui = withReact(
      div(
        SpinButton("spin", 15, min = 0, max = 50, step = 5),
        textOutput("spinValue")
      )
    ),
    server = function(input, output) {
      output$spinValue <- renderText({
        sprintf("Value: \%s", input$spin)
      })
    }
  )
}
}
