#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("R Programmers are Happiest"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        radioButtons("radio",label=h3("Choose One"),
                     choices = list("Show Happiest" = 1,
                                    "Show Angriest" = 2),
                     selected = 1),
        #helpText("Developing Data Products, Week 4. The inspiration for this app comes from 
        #         the article 'Which Programming Languages Have the Happiest (and Angriest) Commenters?' 
        #         by Sara Robinson. Click 'Show Happiest' to see the happiest Stack Overflow commenters. 
        #         Click 'Show Angriest' to see the least happy commenters.")
        withTags({
                div(
                        p("Developing Data Products, Week 4. Click 'Show Happiest' to see the happiest
                  Stack Overflow commenters. Click 'Show Angriest' to see the least happy commenters."),
                        p("The inspiration for this app comes from the article 'Which Programming Languages 
                          Have the Happiest (and Angriest) Commenters?' by Sara Robinson"),
                        a(href="https://hackernoon.com/which-programming-languages-have-the-happiest-and-angriest-commenters-ebe91b3852ed#.zcoyw1j3c","The original article is here")
                )
        })
    ),
    
    # Display the bar chart
    mainPanel(
       plotOutput("barChart")
    )
  )
))
