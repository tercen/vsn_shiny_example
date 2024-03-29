library(shiny)

ui <- shinyUI(
  mainPanel(
    shinyjs::useShinyjs(),
    tags$script(HTML('setInterval(function(){ $("#hiddenButton").click(); }, 1000*30);')),
    tags$footer(shinyjs::hidden(actionButton(inputId = "hiddenButton", label = "hidden"))),
    uiOutput("body")
  )
)