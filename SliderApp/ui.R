library(shiny)

shinyUI(fluidPage(
    titlePanel("Slider App"),
    sidebarLayout(
        sidebarPanel(
            h1("Move the slider!"),
            sliderInput("slider2", "Slide Me!", 0, 100, 0)
        ),
        mainPanel(
            h3("Slider Value : "),
            textOutput("text1")
        )
    )
))
