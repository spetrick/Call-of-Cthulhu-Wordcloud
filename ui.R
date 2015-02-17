

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Call of C'Thulhu Word Cloud"),

  # Sidebar with a slider input to allow users to determine the maximum number of words for inclusion in the cloud
  sidebarLayout(
    sidebarPanel(
      sliderInput("maxi",
                  "Maximum Number of Words:",
                  min = 10,
                  max = 100,
                  value = 30)
    ),

    # Show the generated word cloud
    mainPanel(
      plotOutput("cloud")
    )
  )
))
