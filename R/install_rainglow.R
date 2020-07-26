#' install_themes
#'
#' @importFrom stringr str_remove
#'
#' @return
#' @export
install_themes <- function() {


  avail <- list.files(pattern=".tmTheme", path = "rainglow")
  print(length(avail))

  installed <- names(rstudioapi::getThemes())
  print(length(installed))



  for (i in 1:length(avail)) {
      print(paste("Installing: ", avail[i]))

      match <- tolower(avail[i])
      match <- str_remove(match, ".tmtheme")

      if (match %in% installed) {
        print("already installed")
      }
      else {
        rstudioapi::addTheme(themePath = paste0("rainglow//", avail[i]))
      }
  }
}
