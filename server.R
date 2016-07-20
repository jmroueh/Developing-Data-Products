library(shiny)


ageCalc <- function(birthdate) {Sys.Date()-as.Date(birthdate)}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$birthdate})
    output$prediction <- renderPrint({ageCalc(input$birthdate)})
  }
)
