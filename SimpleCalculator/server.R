library(shiny)

shinyServer(function(input, output){
    output$output <- renderText({
        switch(input$operator,
               "+" = input$box1 + input$box2,
               "-" = input$box1 - input$box2,
               "x" = input$box1 * input$box2,
               "/" = input$box1 / input$box2)
    })
})
