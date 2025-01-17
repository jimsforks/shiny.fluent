% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/components.R, R/documentation.R, R/examples.R
\name{BasePickerListBelow}
\alias{BasePickerListBelow}
\alias{TagPicker}
\alias{Pickers}
\title{Pickers}
\usage{
BasePickerListBelow(...)

TagPicker(...)
}
\arguments{
\item{defaultSelectedItems}{\code{T[]} \cr Initial items that have already been selected and should appear in the people picker.}

\item{disabled}{\code{boolean} \cr Flag for disabling the picker.}

\item{enableSelectedSuggestionAlert}{\code{boolean} \cr Adds an additional alert for the currently selected suggestion. This prop should be set to true for IE11 and below, as it enables proper screen reader behavior for each suggestion (since aria-activedescendant does not work with IE11). It should not be set for modern browsers (Edge, Chrome).}

\item{getTextFromItem}{\verb{(item: T, currentValue?: string) => string} \cr A callback to get text from an item. Used to autofill text in the pickers.}

\item{inputProps}{\code{IInputProps} \cr AutoFill input native props}

\item{itemLimit}{\code{number} \cr Restrict the amount of selectable items.}

\item{onBlur}{\verb{React.FocusEventHandler<HTMLInputElement | Autofill>} \cr A callback for when the user moves the focus away from the picker}

\item{onChange}{\verb{(items?: T[]) => void} \cr A callback for when the selected list of items changes.}

\item{onDismiss}{\verb{(ev?: any, selectedItem?: T) => boolean | void} \cr A callback to override the default behavior of adding the selected suggestion on dismiss. If it returns true or nothing, the selected item will be added on dismiss. If false, the selected item will not be added on dismiss.}

\item{onEmptyInputFocus}{\verb{(selectedItems?: T[]) => T[] | PromiseLike<T[]>} \cr A callback for what should happen when a user clicks within the input area.}

\item{onEmptyResolveSuggestions}{\verb{(selectedItems?: T[]) => T[] | PromiseLike<T[]>} \cr A callback for what should happen when suggestions are shown without input provided. Returns the already selected items so the resolver can filter them out. If used in conjunction with resolveDelay this will only kick off after the delay throttle.}

\item{onFocus}{\verb{React.FocusEventHandler<HTMLInputElement | Autofill>} \cr A callback for when the user put focus on the picker}

\item{onInputChange}{\verb{(input: string) => string} \cr A callback used to modify the input string.}

\item{onItemSelected}{\verb{(selectedItem?: T) => T | PromiseLike<T> | null} \cr A callback to process a selection after the user selects something from the picker. If the callback returns null, the item will not be added to the picker.}

\item{onRemoveSuggestion}{\verb{(item: T) => void} \cr A callback for when an item is removed from the suggestion list}

\item{onRenderItem}{\verb{(props: IPickerItemProps<T>) => JSX.Element} \cr Function that specifies how the selected item will appear.}

\item{onRenderSuggestionsItem}{\verb{(props: T, itemProps: ISuggestionItemProps<T>) => JSX.Element} \cr Function that specifies how an individual suggestion item will appear.}

\item{onResolveSuggestions}{\verb{(filter: string, selectedItems?: T[]) => T[] | PromiseLike<T[]>} \cr A callback for what should happen when a person types text into the input. Returns the already selected items so the resolver can filter them out. If used in conjunction with resolveDelay this will only kick off after the delay throttle.}

\item{onValidateInput}{\verb{(input: string) => ValidationState} \cr A function used to validate if raw text entered into the well can be added into the selected items list}

\item{pickerCalloutProps}{\code{ICalloutProps} \cr The properties that will get passed to the Callout component.}

\item{pickerSuggestionsProps}{\code{IBasePickerSuggestionsProps} \cr The properties that will get passed to the Suggestions component.}

\item{resolveDelay}{\code{number} \cr The delay time in ms before resolving suggestions, which is kicked off when input has been changed. e.g. If a second input change happens within the resolveDelay time, the timer will start over. Only until after the timer completes will onResolveSuggestions be called.}

\item{selectedItems}{\code{T[]} \cr The items that the base picker should currently display as selected. If this is provided then the picker will act as a controlled component.}

\item{"aria-label"}{\code{string} \cr Screen reader label to apply to an input element.}

\item{defaultVisibleValue}{\code{string} \cr The default value to be visible when the autofill first created. This is different than placeholder text because the placeholder text will disappear and re-appear. This text persists until deleted or changed.}

\item{index}{\code{number} \cr Index number of the item in the array of picked items.}

\item{item}{\code{T} \cr The item of Type T (Persona, Tag, or any other custom item provided).}

\item{key}{\code{string | number} \cr Unique key for each picked item.}

\item{onItemChange}{\verb{(item: T, index: number) => void} \cr Internal Use only, gives a callback to the renderer to call when an item has changed. This allows the base picker to keep track of changes in the items.}

\item{selected}{\code{boolean} \cr Whether the picked item is selected or not.}

\item{id}{\code{string} \cr Unique id of the suggested item.}

\item{isSelectedOverride}{\code{boolean} \cr An override for the 'selected' property of the SuggestionModel.}

\item{onClick}{\verb{(ev: React.MouseEvent<HTMLButtonElement>) => void} \cr Callback for when the user clicks on the suggestion.}

\item{onRemoveItem}{\verb{(ev: React.MouseEvent<HTMLButtonElement>) => void} \cr Callback for when the item is removed from the array of suggested items.}

\item{removeButtonAriaLabel}{\code{string} \cr The ARIA label for the button to remove the suggestion from the list.}

\item{RenderSuggestion}{\verb{(item: T, suggestionItemProps: ISuggestionItemProps<T>) => JSX.Element} \cr Optional renderer to override the default one for each type of picker.}

\item{showRemoveButton}{\code{boolean} \cr Whether the remove button should be rendered or not.}

\item{suggestionModel}{\verb{ISuggestionModel<T>} \cr Individual suggestion object containing its properties.}

\item{className}{\code{string} \cr The CSS className of the suggestions root.}

\item{componentRef}{\verb{IRefObject<ISuggestions<T>>} \cr Optional callback to access the ISuggestions interface. Use this instead of ref for accessing the public methods and properties of the component.}

\item{createGenericItem}{\verb{() => void} \cr The callback that should be called when the user attempts to use the input text as as item}

\item{forceResolveText}{\code{string} \cr The text that appears indicating to the use to force resolve the input}

\item{isLoading}{\code{boolean} \cr Used to indicate whether or not the suggestions are loading.}

\item{isMostRecentlyUsedVisible}{\code{boolean} \cr Indicates if a short list of recent suggestions should be shown.}

\item{isResultsFooterVisible}{\code{boolean} \cr Indicates if the text in resultsFooter or resultsFooterFull should be shown at the end of the suggestion list.}

\item{isSearching}{\code{boolean} \cr Used to indicate whether or not the component is searching for more results.}

\item{loadingText}{\code{string} \cr The text to display while the results are loading.}

\item{moreSuggestionsAvailable}{\code{boolean} \cr Used to indicate whether or not the user can request more suggestions. Dictates whether or not the searchForMore button is displayed.}

\item{mostRecentlyUsedHeaderText}{\code{string} \cr The text that should appear at the top of the most recently used box.}

\item{noResultsFoundText}{\code{string} \cr The text that should appear if no results are found when searching.}

\item{onGetMoreResults}{\verb{() => void} \cr The callback that should be called when the user attempts to get more results}

\item{onRenderNoResultFound}{\verb{IRenderFunction<void>} \cr How the "no result found" should look in the suggestion list.}

\item{onRenderSuggestion}{\verb{(props: T, suggestionItemProps: ISuggestionItemProps<T>) => JSX.Element} \cr How the suggestion should look in the suggestion list.}

\item{onSuggestionClick}{\verb{(ev?: React.MouseEvent<HTMLElement>, item?: any, index?: number) => void} \cr What should occur when a suggestion is clicked}

\item{onSuggestionRemove}{\verb{(ev?: React.MouseEvent<HTMLElement>, item?: T | IPersonaProps, index?: number) => void} \cr Function to fire when one of the optional remove buttons on a suggestion is clicked.

TODO (adjective-object) remove IPersonaprops before the next major version bump}

\item{refocusSuggestions}{\verb{(keyCode: KeyCodes) => void} \cr A function that resets focus to the expected item in the suggestion list}

\item{removeSuggestionAriaLabel}{\code{string} \cr An ARIA label to use for the buttons to remove individual suggestions.}

\item{resultsFooter}{\verb{(props: ISuggestionsProps<T>) => JSX.Element} \cr A renderer that adds an element at the end of the suggestions list it has fewer items than resultsMaximumNumber.}

\item{resultsFooterFull}{\verb{(props: ISuggestionsProps<T>) => JSX.Element} \cr A renderer that adds an element at the end of the suggestions list it has more items than resultsMaximumNumber.}

\item{resultsMaximumNumber}{\code{number} \cr Maximum number of suggestions to show in the full suggestion list.}

\item{searchErrorText}{\code{string} \cr The text that should appear if there is a search error.}

\item{searchForMoreText}{\code{string} \cr The text that appears indicating to the user that they can search for more results.}

\item{searchingText}{\code{string} \cr The text to display while searching for more results in a limited suggestions list.}

\item{showForceResolve}{\verb{() => boolean} \cr The callback that should be called to see if the force resolve command should be shown}

\item{showRemoveButtons}{\code{boolean} \cr Indicates whether to show a button with each suggestion to remove that suggestion.}

\item{styles}{\verb{IStyleFunctionOrObject<any, any>} \cr Call to provide customized styling that will layer on top of the variant rules.}

\item{suggestions}{\verb{ISuggestionModel<T>[]} \cr The list of Suggestions that will be displayed}

\item{suggestionsAvailableAlertText}{\code{string} \cr Screen reader message to read when there are suggestions available.}

\item{suggestionsClassName}{\code{string} \cr The CSS className of the suggestions list}

\item{suggestionsContainerAriaLabel}{\code{string} \cr An ARIA label for the container that is the parent of the suggestions.}

\item{suggestionsHeaderText}{\code{string} \cr The text that appears at the top of the suggestions list.}

\item{suggestionsItemClassName}{\code{string} \cr The className of the suggestion item.}

\item{suggestionsListId}{\code{string} \cr The string that will be used as the suggestionsListId. Will be used by the BasePicker to keep track of the list for aria.}

\item{theme}{\code{ITheme} \cr Theme provided by High-Order Component.}
}
\description{
For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/Pickers}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.

Pickers are used to select one or more items, such as tags or files, from a large list.

For more details and examples visit the official \href{https://developer.microsoft.com/en-us/fluentui#/controls/web/pickers}{docs}.
The R package can not handle each and every case, so for advanced use cases
you need to work using the original docs to achieve the desired result.
}
\section{Best practices}{
\subsection{Layout}{
\itemize{
\item Use a picker to quickly search for a few tags or files.
\item Use a picker to manage a group of tags or files.
}
}
}

\examples{
library(shiny.fluent)

if (interactive()) {
  shinyApp(
    ui = tagList(
      tags$script(HTML(
"
testTags = [
  'black',
  'blue',
  'brown',
  'cyan',
  'green',
  'magenta',
  'mauve',
  'orange',
  'pink',
  'purple',
  'red',
  'rose',
  'violet',
  'white',
  'yellow',
].map(item => ({ key: item, name: item }));

function listContainsTagList(tag, tagList) {
  if (!tagList || !tagList.length || tagList.length === 0) {
    return false;
  }
  return tagList.some(compareTag => compareTag.key === tag.key);
};

function filterSuggestedTags(filterText, tagList) {
  return filterText
    ? testTags.filter(
        tag => tag.name.toLowerCase().indexOf(filterText.toLowerCase()) === 0 && !listContainsTagList(tag, tagList),
      )
    : [];
};
" 
      )),
      textOutput("selectedTags"),
      withReact(
        TagPicker(
          onResolveSuggestions=JS("filterSuggestedTags"),
          onEmptyInputFocus=JS("function(tagList) { return testTags.filter(tag => !listContainsTagList(tag, tagList)); }"),
          getTextFromItem=JS("function(item) { return item.text }"),
          pickerSuggestionsProps=list(suggestionsHeaderText='Suggested tags', noResultsFoundText='No color tags found'),
          itemLimit=2,
          onChange=JS("function(selection) { Shiny.setInputValue('selectedTags', JSON.stringify(selection)) }")
        )
      )
    ),
    server = function(input, output) {
      output$selectedTags <- renderText({
        if (is.null(input$selectedTags)) {
          "Select up to 2 colors below:"
        } else {
          paste("You have selected:", paste(jsonlite::fromJSON(input$selectedTags)$name, collapse=", "))
        }
      })
    }
  )
}
}
