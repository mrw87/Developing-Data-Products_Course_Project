library(shiny)
BMI<-function(Weight,Height) {(Weight*703)/(Height^2)}


                              
weightvalue<-function(Weight,Height){
BMI_value<-(Weight*703)/(Height^2)
ifelse(BMI_value<18.5,"Underweight",ifelse(BMI_value<25,"Normal Weight",ifelse(BMI_value<30,"Overweight","Obese")))
}
                              
shinyServer(
  function(input, output) {
    
    output$inputValue1 <- renderPrint({input$Weight})
    output$inputValue2 <- renderPrint({input$Height})
    output$estimation <- renderPrint({BMI(input$Weight,input$Height)})
    output$diagnostic <- renderPrint({weightvalue(input$Weight,input$Height)})
  } 
)

