library(shiny)

shinyServer(function(input,output){
  
  mydata <- reactive({
    dist <- switch(input$dist,
                   norm = rnorm,
                   unif = runif,
                   lnorm = rlnorm,
                   exp = rexp,
                   rnorm)
    dist(input$n)
  })
  
  
  output$plot <- renderPlot({
    
    dist <- input$dist
    n <- input$n
    hist( mydata(), main=paste('r', dist, '(', n, ')', sep=''))
  })
  
  output$summary <- renderPrint({
      summary(mydata())
    }
  )
  
  output$table <- renderTable({
    
    data.frame( x= mydata())
  })
  
})
