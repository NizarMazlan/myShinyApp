library(shiny)

shinyUI(fluidPage(
    titlePanel("Plot Random Numbers"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "How many random numbers you want to plot?",
                         value = 1000, min = 1, max = 1000, step = 1),
            sliderInput("sliderX", "Pick a minimum and a maximum value of X",
                        -100, 100, value = c(-50, 50)),
            sliderInput("sliderY", "Pick a minimum and a maximum value of Y",
                        -100, 100, value = c(-50, 50)),
            checkboxInput("show_xlab", "Show/Hide X axis Label", value = TRUE),
            checkboxInput("show_ylab", "Show/Hide Y axis Label", value = TRUE),
            checkboxInput("show_title", "Show/Hide Title")
        ),
        mainPanel(
            h3("Graph of Random Points"),
            plotOutput("plot1")
        )
    )
))
