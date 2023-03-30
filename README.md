
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shiny.navbarlogo

<!-- badges: start -->

[![R-CMD-check](https://github.com/llongour/shiny.navbarlogo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/llongour/shiny.navbarlogo/actions/workflows/R-CMD-check.yaml)
[![shiny.navbarlogo status
badge](https://llongour.r-universe.dev/badges/shiny.navbarlogo)](https://llongour.r-universe.dev)
<!-- badges: end -->

The goal of shiny.navbarlogo is to help to add logo in navbarPage

## Installation

You can install the development version of shiny.navbarlogo from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("llongour/shiny.navbarlogo")
```

## Example

``` r
dir.create("www/img", recursive = TRUE)
file.copy(system.file("img/shiny.png", package = "shiny.navbarlogo"), "www/img/shiny.png")
file.copy(system.file("img/r.png", package = "shiny.navbarlogo"), "www/img/r.png")

library(shiny)
library(shiny.navbarlogo)
library(bslib)

ui <- navbarPage(
  "My App",
  theme = bs_theme(),
  navbarLogo(
    path = c("img/shiny.png", "img/r.png"),
    url = c("https://shiny.rstudio.com/", "https://www.r-project.org/")
  ),
  tabPanel("Tab 1"),
  tabPanel("Tab 2")
)

server <- function(input, output) {
}

shinyApp(ui, server)
```
