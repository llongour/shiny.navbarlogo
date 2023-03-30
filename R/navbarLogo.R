#' Add logos to the navbar
#'
#' @param path a string containing the file path for the logo image
#' @param url a string containing the URL for the logo link
#' @importFrom htmltools tags HTML
#'
#' @examples
#' navbarLogo(path = c("img/janedoe.png", "img/johndoe.png"),
#'               url = c("https://duckduckgo.com/", "https://duckduckgo.com/"))
#' @export
navbarLogo <- function(path, url) {
  js_code <- paste0("function addLogosToNavbar() {",
                    "var header = document.querySelector('.navbar > .container-fluid');",
                    "if (header.querySelector('.logo-anchor') !== null) return;",
                    "var imgContainer = document.createElement('div');",
                    "imgContainer.setAttribute('style', 'float:left');",
                    paste(sapply(seq_along(path), function(i) {
                      paste0("var logo", i, " = document.createElement('a');",
                             "logo", i, ".setAttribute('href', '", url[i], "');",
                             "logo", i, ".setAttribute('target', '_blank');",
                             "logo", i, ".classList.add('logo-anchor');",
                             "var img", i, " = document.createElement('img');",
                             "img", i, ".setAttribute('src', '", path[i], "');",
                             "img", i, ".setAttribute('alt', 'alt');",
                             "img", i, ".setAttribute('style', 'float:left;height:41px;margin-right:10px;');",
                             "logo", i, ".appendChild(img", i, ");",
                             "imgContainer.appendChild(logo", i, ");"
                      )
                    }), collapse = ''), # Add collapse argument
                    "header.appendChild(imgContainer);",
                    "}",
                    "setTimeout(addLogosToNavbar, 100);"
  )
  tags$head(tags$script(HTML(js_code)))
}
