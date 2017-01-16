#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

#happyDf <- read.csv("c:/Users/Chuck/Documents/Coursera/ShinyHappy/data/happy.csv")
#angryDf <- read.csv("c:/Users/Chuck/Documents/Coursera/ShinyHappy/data/angry.csv")

happyDf <- data.frame(Tag=c("R","Ruby on Rails","XML","Ruby","CSS","iPhone","Regex","Swift",
                            "Jquery","HTML","Python","Objective-C","IOS","AngularJs","Javascript"),
                      PercentHappy=c(20.18,17.59,17.44,16.99,16.92,16.85,16.77,16.4,16.39,
                                     15.86,15.74,15.64,15.53,15.45,15.38),
                      Abbr=c("R","Rails","XML","Ruby","CSS","iPhone","Regex","Swift","Jquery",
                             "HTML","Python","Obj-C","IOS","Angular","JS"))

angryDf <- data.frame(Tag=c("Objective-C","C","C++","iPhone","IOS","Multithreading","Arrays",
                            "PHP","Algorithm","MySql","Ajax","String","Java","Regex","JSON","XML"),
                      PercentAngry=c(3.06,3.0,2.93,2.93,2.73,2.57,2.51,2.51,2.48,2.48,2.46,2.43,
                                     2.41,2.36,2.34,2.34),
                      Abbr=c("Obj-C","C","C++","iPhone","IOS","Threading","Arrays","PHP",
                             "Algorithm","MySql","Ajax","String","Java","Regex","JSON","XML"))


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$barChart <- renderPlot({
    
          if (input$radio == 1) {
                  ggplot(happyDf,aes(reorder(Abbr,PercentHappy),y=PercentHappy,fill=Tag)) +
                          geom_bar(stat="identity",color="black") +
                          xlab("Tag") + ylab("Percent Happy")
          } else {
                  ggplot(angryDf,aes(reorder(Abbr,PercentAngry),y=PercentAngry,fill=Tag)) +
                          geom_bar(stat="identity",color="black") +
                          xlab("Tag") + ylab("Percent Angry")
          }                  

  })
})
