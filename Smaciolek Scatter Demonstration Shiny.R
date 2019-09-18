library(shiny)
ui <- fluidPage(
  titlePanel("SMaciolek scatter package - demonstration"),
  sliderInput(inputId="num",
              label="Choose a number of points",
              value=25,min=1,max=10000),
  sliderInput(inputId="res",
              label="choose a resolution",
              value=25,min=1,max=250),
  plotOutput("hist1"),
  plotOutput("hist2"),
  plotOutput("hist3")
)
server <- function(input, output) {
  output$hist1<-renderPlot({
    TDbinplot(rnorm(input$num),rnorm(input$num),input$res)
  })
  output$hist2<-renderPlot({
  binplot(rnorm(input$num),rnorm(input$num),input$res)
  })
  output$hist3<-renderPlot({
    scatter(rnorm(input$num),rnorm(input$num))
  })
}

shinyApp(ui = ui, server = server)
