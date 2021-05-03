library(shiny)

shinyUI(fluidPage(
    titlePanel("A Simple Calculator"),
    sidebarLayout(
        sidebarPanel(
            numericInput("box1", "Enter the first number", value = 0),
            numericInput("box2", "Enter the second number", value = 0),
            selectInput("operator", "Please select the operation you want",
                        choices = c("+", "-", "x", "/")),
            submitButton("Submit") #new
        ),
        mainPanel(
            h2("The result is >>> "),
            textOutput("output")
        )
    )
))
