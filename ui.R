
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Upward vertical motion"),

  sidebarPanel(
    h3("Introduction"),
    p("This application will help you to calculate 
       the position of an object that starts performing 
       a upward vertical motion under the influence of 
       the gravitational force. Given the initial speed 
       it will calculate the position of the object for a particular time.
       It will also predict the maximum height the object can reach.
       To insure that the object is all the time moving upward, we assume 
       that the allowed initial speed runs from 100 m/s to 1000 m/s and 
       that the time we are interested runs from t=0 s to t=10 s. 
       If you introduce values out of these intervals, negative values 
       maybe obtained, meaning that the object is not moving upward anymore."),
    numericInput('vo', 'Initial speed (m/s)', 100, min=100, max=1000, step=1),
    submitButton('Submit'),
    numericInput('t', 'Time (s)', 0, min=0, max=10, step=1),
    submitButton('Submit')
),
mainPanel(
 h3('Prediction result is:'),
 h4('Position of the object is (in meters)'),
 verbatimTextOutput("result1"),
 h4('The maximum height that the object can reach is (in meters):'),
 verbatimTextOutput("result2")
)
))