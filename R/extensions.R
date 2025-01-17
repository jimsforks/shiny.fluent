#' Helper function for constructing items for `CommandBar`
#'
#' CommandBar expects items definition as a nested structure, which gets lengthy and verbose.
#' This function helps makes this definition shorter. Returns a list with all arguments passed through,
#' except for `text`, `icon` (which will inserted as proper `iconProps`) and `subitems` (which will be inserted as
#' proper `subMenuProps`)
#'
#' @param text text to be displayed on the menu
#' @param icon optional name of an icon
#' @param subitems optional list of CommandBar items
#' @seealso CommandBar
#' @export
CommandBarItem <- function(text, icon = NULL, subitems = NULL, ...) {
  props <- rlang::dots_list(...)

  props$text <- text
  if (is.character(icon)) props$iconProps <- list(iconName = icon)
  if (!is.null(subitems)) props$subMenuProps <- list(items = subitems)
  props
}

#' Basic Fluent UI page
#'
#' Creates a Fluent UI page with sensible defaults (included Fabric CSS classes, proper class given
#' to the body tag, suppressed Bootstrap).
#'
#' You can also use shiny.fluent directly, without using this function. You still need to use
#' \code{\link{withReact}} or \code{\link{reactOutput}} to insert React components.
#'
#' The Bootstrap library is suppressed by default,
#' as it doesn't work well with Fluent UI in general.
#'
#' @param ... The contents of the document body.
#' @param suppress_bootstrap Whether to suppress Bootstrap.
#' @export
fluentPage <- function(..., suppress_bootstrap = TRUE) {
  htmltools::tags$body(class = "ms-Fabric",
    if (suppress_bootstrap) htmltools::suppressDependencies("bootstrap"),
    htmltools::htmlDependency(
      name = "office-ui-fabric-core",
      version = "11.0.0",
      src = list(href = "https://static2.sharepointonline.com/files/fabric/office-ui-fabric-core/11.0.0/css/"),
      stylesheet = "fabric.min.css"
    ),
    ...
  )
}
