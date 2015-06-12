PercentHighMark <- function(hours) {
    myval <- pnorm(hours, 4, 2)
    retVal <- paste(round(100*myval, 2), "%", sep="")
    retVal
}

shinyServer(
    
    
    function(input, output) {
        output$text1 <- renderText({input$text1})
        output$text3 <- renderText({
            input$goButton
            isolate(PercentHighMark(as.numeric(input$text1)))
        })
    }
)