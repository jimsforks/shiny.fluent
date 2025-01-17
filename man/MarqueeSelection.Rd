% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{MarqueeSelection}
\alias{MarqueeSelection}
\title{MarqueeSelection}
\usage{
MarqueeSelection(...)
}
\arguments{
\item{className}{\code{string} \cr Additional CSS class(es) to apply to the MarqueeSelection.}

\item{componentRef}{\verb{IRefObject<IMarqueeSelection>} \cr Optional callback to access the IMarqueeSelection interface. Use this instead of ref for accessing the public methods and properties of the component.}

\item{isDraggingConstrainedToRoot}{\code{boolean} \cr Optional flag to restrict the drag rect to the root element, instead of allowing the drag rect to start outside of the root element boundaries.}

\item{isEnabled}{\code{boolean} \cr Optional flag to control the enabled state of marquee selection. This allows you to render it and have events all ready to go, but conditionally disable it. That way transitioning between enabled/disabled generate no difference in the DOM.}

\item{onShouldStartSelection}{\verb{(ev: MouseEvent) => boolean} \cr Optional callback that is called, when the mouse down event occurs, in order to determine if we should start a marquee selection. If true is returned, we will cancel the mousedown event to prevent upstream mousedown handlers from executing.}

\item{rootProps}{\verb{React.HTMLAttributes<HTMLDivElement>} \cr Optional props to mix into the root DIV element.}

\item{selection}{\code{ISelection} \cr The selection object to interact with when updating selection changes.}

\item{styles}{\verb{IStyleFunction<IMarqueeSelectionStyleProps, IMarqueeSelectionStyles>} \cr Call to provide customized styling that will layer on top of the variant rules.}

\item{theme}{\code{ITheme} \cr Theme (provided through customization.)}
}
\description{
The MarqueeSelection component provides a service which allows the user to drag a rectangle to be drawn around
items to select them. This works in conjunction with a selection object, which can be used to generically store selection state, separate from a component that consumes the state.

MarqueeSelection also works in conjunction with the AutoScroll utility to automatically scroll the container when we drag a rectangle within the vicinity of the edges.

When a selection rectangle is dragged, we look for elements with the \strong{data-selection-index} attribute populated. We get these elements' boundingClientRects and compare them with the root's rect to determine selection state. We update the selection state appropriately.

In virtualization cases where items that were once selected are dematerialized, we will keep the item in its
previous state until we know definitively if it's on/off. (In other words, this works with List.)

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/MarqueeSelection}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\examples{
library(shiny)
library(shiny.fluent)

# This is an advanced demo showing how you can use virtually all features of Fluent UI 
# by creating custom components in JS and rendering them with shiny.react.
# This example is a translation of the example in https://developer.microsoft.com/en-us/fluentui#/controls/web/marqueeselection.

# Script showing how to:
# 1. Use mergeStyles and themes from Fluent
# 2. Define custom components
# 3. Send results back to Shiny.
script <- tags$script(HTML("
Fluent = window['shiny.fluent']

const theme = Fluent.getTheme();
const styles = Fluent.mergeStyleSets({
  photoList: {
    display: 'inline-block',
    border: '1px solid ' + theme.palette.neutralTertiary,
    margin: 0,
    padding: 10,
    overflow: 'hidden',
    userSelect: 'none',
  },

  photoCell: {
    position: 'relative',
    display: 'inline-block',
    margin: 2,
    boxSizing: 'border-box',
    background: theme.palette.neutralLighter,
    lineHeight: 100,
    verticalAlign: 'middle',
    textAlign: 'center',
    selectors: {
      '&.is-selected': {
        background: theme.palette.themeLighter,
        border: '1px solid ' + theme.palette.themePrimary,
      },
    },
  },
  checkbox: {
    margin: '10px 0',
  },
});

const useForceUpdate = () => {
  const [, setIt] = React.useState(false);
  return () => setIt(it => !it);
};

window.exampleApp = {}
window.exampleApp.MarqueeSelectionExample = function(params) {
  const forceUpdate = useForceUpdate();
  const name = params['name'];
  const photos = params['photos'];

  if(window.selection === undefined) {
    window.selection = new Fluent.Selection({
      items: photos,
      onSelectionChanged: function() {
        Shiny.setInputValue(name, window.selection.getSelectedIndices());
        forceUpdate();
      }
    });
  }

  const items = photos.map((photo, index) => {
    console.log(window.selection.isIndexSelected(index));
    return React.createElement('div',
      {
        key: index,
        'data-is-focusable': true,
        className: Fluent.css(styles.photoCell, window.selection.isIndexSelected(index) && 'is-selected'),
        'data-selection-index': index,
        style: { width: photo.width, height: photo.height }
      }, index)
    });

  return React.createElement(
    Fluent.MarqueeSelection,
    { selection: window.selection, isEnabled: true },
    React.createElement('ul', { className: styles.photoList }, items)
  );
};
"))

if (interactive()) {
  shinyApp(
    ui = tagList(
      script,
      withReact(
        div(
          textOutput("marqueeResult"),
          Label('Drag a rectangle around the items below to select them'), # Make sure Fluent dependency is loaded.
          reactOutput("marqueeSelection", width="auto", height="auto")
        )
      )
    ),
    server = function(input, output) {
      MarqueeSelectionExample <- shiny.react::make_output(NULL, 'exampleApp', 'MarqueeSelectionExample')
      
      photos <- lapply(1:50, function(index) {
        randomWidth <- 50 + sample.int(150, 1)
        list(
          key=index,
          url=paste0('http://placehold.it/', randomWidth, 'x100'),
          width=randomWidth,
          height=100)
      })
      
      output$marqueeResult <- renderText({
        paste("You have selected: ", paste(input$selectedIndices, collapse=", "))
      })
      
      output$marqueeSelection <- renderReact({
        reactWidget(
          MarqueeSelectionExample(
            name="selectedIndices",
            photos=photos
          )
        )
      })
    }
  )
}
}
