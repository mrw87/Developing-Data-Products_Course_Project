library(shiny) 
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) Calculator for Adults"),
    
    sidebarPanel(
      numericInput('Weight', 'Insert your weight in pounds', 0, min = 50, max = 400, step = 1) ,
      numericInput('Height', 'Insert your height in inches', 0, min = 36, max = 96, step = 1),
      submitButton('Submit')
    ), 
    mainPanel(
      p('The Body mass index (BMI) is a measure of relative weight based on an individuals mass and height.'),
      p('The following weight status categories are those currently used by the Centers for Disease Control and Prevention (CDC). They are suitable for adults who have stopped growing.'),
      tags$div(
        tags$ul(
          tags$li('BMI < 18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >= 30        : Obese')
        )
      ),
      
      h4('Based on the values that you entered:'), 
      p('Weight:'), verbatimTextOutput("inputValue1"),
      p('Height:'), verbatimTextOutput("inputValue2"),
      h4('Your BMI is:'),
      verbatimTextOutput("estimation"),
      p('According to the CDC, your BMI indicates that you are:'),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)