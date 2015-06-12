shinyUI(pageWithSidebar(
    headerPanel("Want a great mark on your project?"),
    sidebarPanel(
        textInput(inputId="text1", label = "How many hours have you set aside to complete your project?"),
        actionButton("goButton", "Mark Predictor")
    ),
    mainPanel(
        p('You entered:'),
        textOutput('text1'),
        p('Your percent chance of achieving 90% or higher is: '),
        textOutput('text3')
    )
))