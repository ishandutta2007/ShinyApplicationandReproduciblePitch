
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("To Calculate Volume and Surface Area of Cuboid"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    textInput(inputId='length','Enter Length', value='0'),
    textInput(inputId='breadth','Enter Breadth', value='0'),
    textInput(inputId='height','Enter Height', value='0'),
    dateInput("date","Date:")
  ),
  
  # Show a plot of the generated distribution
  mainPanel(h2('Calculating Volume and Surface Area'),
            h4('Volume is'),
            verbatimTextOutput("oid1"),
            h4('Surface Area'),
            verbatimTextOutput("oid2"),
            h4('Today Date is'),
            verbatimTextOutput("odate")
  )
))
