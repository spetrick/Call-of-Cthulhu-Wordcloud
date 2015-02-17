
#'
#'This file contains the directions that Shiny will follow to perform calculations
#'It contains all calls to functions and calculations, in this case a call to
#'makeCloud in the file makeCloud.R and the call to renderPlot({})

library(shiny)

shinyServer(function(input, output) {

    require(tm)
    require(wordcloud)  #The tm and wordcloud libraries are necessary to create the wordcloud
    source("makeCloud.R")   #Source the function used to create the wordcloud
    output$cloud <- renderPlot({
        makeCloud("Data/", input$maxi)  #prepare the wordcloud for printing
    })    

})