ageApp presentation
========================================================
author: Jawad Mroueh
date: Thu Jul 21 09:30:52 2016
autosize: true

Background
========================================================

Goal: Create a shiny web based application that can predict any person's age in days given the birthdate. Application can be found here  <https://mrouehjm.shinyapps.io/ageApp>.

- No special software is needed
- Remote access to application from anywhere in the world
- Only requires a web server and internet connection

Input
========================================================
Only input needed is the date of birth which uses dateInput function to help select a date from calendar view or manualy type it in required format.
- Input needed is on date of birth in the following format
- yyyy-mm-dd
- example: January 23, 1987 would be written 1987-01-23

Output
========================================================

- Output is the age in days up to the system date recorded

Code
========================================================

Code used in the server.R file uses the system date and birthdate inputs


```r
library(shiny)

ageCalc <- function(birthdate) {Sys.Date()-as.Date(birthdate)}

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$birthdate})
    output$prediction <- renderPrint({ageCalc(input$birthdate)})
  }
)
```
