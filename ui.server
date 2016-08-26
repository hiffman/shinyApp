library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Tabsets"),
  
  sidebarPanel(
    radioButtons("dist", "分布类型", list("Normal"="normal", "Uniform" = "unif",
                                      "Log-normal" = "lnorm", "Exponential" = "exp")),
    br(),
    
    sliderInput("n","number of observations", min = 1, max = 1000, value = 500)
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel(title = "Plot", plotOutput("plot")),
      tabPanel("Summary", verbatimTextOutput("summary")),
      tabPanel("Table", tableOutput("table"))
    )
  )
))
