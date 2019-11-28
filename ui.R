#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

shinyUI(fluidPage(

    
    titlePanel("Select two variables below to plot IRIS data:"),

   
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId="variable1",
                         label="Choose Variable 1:",
                         choices=list("Sepal Length"="Sepal.Length","Sepal Width"="Sepal.Width","Petal Length"="Petal.Length","Petal Width"="Petal.Width"),
                         selected="Sepal Length")
            ,selectInput(inputId="variable2",
                         label="Choose Variable 2:",
                         choices=list("Sepal Length"="Sepal.Length","Sepal Width"="Sepal.Width","Petal Length"="Petal.Length","Petal Width"="Petal.Width"),
                         selected="Sepal Width")
        ),

        
        mainPanel(
            textOutput("title")
            ,plotOutput("plot")
        )
    ))
)
