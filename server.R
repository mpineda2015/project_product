distance <- function(vo,t){
  y <- vo*t-(0.5*9.8*t*t)
  return(y)
}

distance_max <- function(vo){
  ymax <-(vo*vo)/(2*9.8)
  return(ymax)
}

shinyServer(
  function(input,output){
    output$result1 <- renderPrint({distance(input$vo,input$t)})
    output$result2 <- renderPrint({distance_max(input$vo)})
    }
)