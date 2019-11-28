#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(DT)
library(ggplot2)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    text <- reactive({
        paste('Here shows the relationship between ',input$variable1, 'versus', input$variable2,':')
    })
    
    output$title <- renderText({
        text()
    })
    output$plot <- renderPlot({
        p <- ggplot(iris, aes_string(x=input$variable1, 
                                     y=input$variable2, colour="Species")) + geom_point()
        print(p)
    })
    
    }
                                           
)
