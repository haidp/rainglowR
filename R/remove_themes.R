#' remove_themes
#'
#' @importFrom stringr str_remove
#'
#' @return
#' @export
remove_themes <- function() {


  avail <- list.files(pattern=".tmTheme", path = "rainglow")
  print(length(avail))

  installed <- names(rstudioapi::getThemes())
  print(length(installed))



  for (i in 1:length(avail)) {
    print(paste("Removing: ", avail[i]))

    match <- tolower(avail[i])
    match <- str_remove(match, ".tmtheme")

    if (match %in% installed) {
      rstudioapi::removeTheme(match)
    }
  }
}
