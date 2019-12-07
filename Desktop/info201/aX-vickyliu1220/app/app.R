library(shiny)

library("dplyr")
library("ggplot2")
library("shinythemes")
ebola_data <- read.csv("ebola_data_db_format.csv",
                       header = TRUE, stringsAsFactors = FALSE)
introduction <- tabPanel(
  titlePanel("Introduction"),
  
  h2("When?"),
  p("Ebola data in record format with indicator, c
    ountry, date and value from Aug 29, 2014 - Mar 23, 2016"),
  h2("Where?"),
  p("The information in the various pages of the WHO web site 
    is issued by the World Health Organization for general distribution"),
  h2("Who?"),
  p("The data was collected by the world health organization, which dedicated for finding the 
    potential threatens for the mankind.The data collects the information based on the total number of probable, confirmed and suspected Ebola 
    cases and deaths in Guinea, Liberia, Sierra Leone, Nigeria, Senegal, Mali, Spain USA, UK and Italy according to Ebola Data and Statistics."),
  h2("Why?"),
  p("The reason for presenting this data is to get a better understanding 
    of the deadly killed virsus Ebola. It generally shows the numbers of Ebola cases and 
    deaths in affected countries")
  )
data_graphics <- tabPanel(
  titlePanel("Data Graphics"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "country",
        "Please choose a country",
        choices = unique(ebola_data$Country)
      )
    ),
    mainPanel(
      plotOutput("graph_state")
    )
  )
)

conclusion <- tabPanel(
  titlePanel("Conclusion"),
  h2("Discussion"),
  p("From this dataset, I learned the seriousness of Ebola. The stakeholders of this data
    are all human kind because we are all facing this serious health problem, and it is 
    our responsibility to take it as serious as possible since we have the same enemy. 
    From this dataset, we learned that people from developing countries are more likely to get
    affected by Ebola. It is important for the World Health Organization as well as the developed 
    countries to focus on this on-going issues worldwide.
    Overall, this dataset gives a more clear direction on which area we should be focus on when 
    dealing with our common enemy -- 'Ebola'. As Ebola may outbreak anytime in the future,
    and there is no way yet to fully cured the virsus. We need to prepare for a better world as to prevent 
    the Ebola as best as possible."),
  h2("Reflection"),
  p("I always learned something from our data. They give me an opportunity to know something 
    outside my world, something I would be care about if I am not dealing with these data. Through
    this data, I learned how terrible the Ebola is: it takes away thousands people's life each year, 
and this number is not decreasing instead. It is sad to say this because as our technology developing 
every year, we, as all humankind, still not able to defeat a virsus. We may have the weapon to defend 
    the outer enemy, but this, Ebola, is never been defeated by us and the only thing we can do is to 
    run away from it.
    At this point, there is a new question rising to my mind, that what mankind will do if someday we are 
    all defeated by our inside enemy -- Virsus like Ebola. Even though we may seem powerful from outside,
    we build shield, tank, and all these weapons to protect us from any harms outside, however, 
    what do we build for harms from inside? This is the problem we need to focus on, and it may not be solved 
    in 100 years, but I am still confident that we are facing a great future with defeating these inside enemies")
  )
ui <- navbarPage(
  theme = shinytheme("cerulean"),
  "Our enemy -- Ebola",
  introduction,
  data_graphics,
  conclusion
)

server <- function(input, output){
  ebola_data <- read.csv("ebola_data_db_format.csv",
                         header = TRUE, stringsAsFactors = FALSE)
  output$graph_state <- renderPlot({
    
    
    summary_table <- ebola_data %>%
      group_by(Country) %>%
      filter(Indicator == "Cumulative number of confirmed Ebola deaths", 
             Country == input$country) 
    
    
    
    
    
    
    ggplot(data = summary_table) + 
      geom_point (
        mapping = aes(x = as.Date(Date), y = value)
      ) +
      scale_color_brewer(palette = "Set3") + ggtitle("Cumulative number of 
                                                     confirmed Ebola deaths") +
      xlab("Year") + ylab("Number of people")
    
  })
}

shinyApp(ui = ui, server = server)