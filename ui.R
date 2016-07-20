library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Age Calculator in days"),
  
    sidebarPanel(
      dateInput("birthdate", "Birth Date:", value = "1921-05-12"),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of prediction'),
        h4('You entered'),
        verbatimTextOutput("inputValue"),
        h4('Which resulted in a prediction of the age in days'),
        verbatimTextOutput("prediction"),
        h4('==================================================================='),
        h4('INSTRUCTIONS: Input any birthdate manually or using the calendar pull down menu, if manual date format must be yyyy-mm-dd. The application will calculate age with respect to current date in units of days')
    )
  )
)

