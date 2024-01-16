#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# This Shiny app was built by Jacopo D. Iorio in the following paper:
#     https://www-tandfonline-com.proxy.lib.umich.edu/doi/full/10.1080/26939169.2021.1997128
# 
# Nicole Wakim has added a plotly view of the SSE and changed the data input
# 
# The original app can be viewed here: https://htgaws.shinyapps.io/premonition/
#
library(here)

setwd(here("slides/03_SLR_01"))

# If you do not have the following packages installed, 
#   run the below code
# install.packages(c("shiny", "plotly"))

# Load the appropriate libraries
library(shiny)
library(plotly)
library(tidyverse)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  titlePanel("Life Expectancy Simple Linear Regression"),
  
  # Sidebar with a slider input for number of bins 
  h5("Let's try to find a model fit with the lowest score!"),
  h6("Click two distinct points of the plot to draw a line. 
     Try to minimize the score (at the top of the plot) using different lines. 
     To create a new line just click on the plot more than twice.
     In this activity, the number we get is our \"score.\" 
     In statistics, this score is actually called the sum of squared errors (SSE).
     Were you able to get the best-fit line presented in class?"),
  
  hr(),
  shiny::plotOutput("plot1", click = "plot_click"),
  textOutput("check"), # not useful
  hr(),
  plotly::plotlyOutput("plot2"),
  hr(),
  shiny::actionButton(inputId='ab1', label="Submit!", 
                      icon = icon("th"), 
                      onclick ="window.open('https://docs.google.com/forms/d/e/1FAIpQLSdPg3QwESQbv1whEb0-1cpgZiX-8ICQGBZe51Yz5sXsFsqUAw/viewform?usp=sf_link', '_blank')")
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  # available data
  mydata <- read.csv(file="../data/lifeexp_femlit_2011.csv", sep=',', header=TRUE) %>% 
    drop_na(life_expectancy_years_2011, female_literacy_rate_2011) %>%
    select(female_literacy_rate_2011, life_expectancy_years_2011)
  colnames(mydata) <- c('x','y') 
  click_saved <- reactiveValues(singleclick = NULL) #niente cliccato
  data = as.data.frame(cbind(intercept = 50.928, slope = 0.2322, SSE = 2942.635))
  
  # plot is available
  output$plot1 <- renderPlot({
    if(!is.null(input$file1)){
      mydata <- read.table(input$file1$datapath,
                           header = input$header,
                           row.names = NULL,
                           sep = ',')
      mydata <- mydata %>% dplyr::select(where(is.numeric))
      mydata <- mydata[,c(1,2)]
      colnames(mydata) <- c('x','y')
    }
    prova <- dim(mydata)[1]
    plot(mydata$x, mydata$y, xlab='Female literacy rate (%)', ylab='Life Expectancy (years)', pch=16)
  })
  
  output$plot2 <- renderPlotly({
    isolate({
      plot_ly(data = data, x=data$intercept, 
              y=data$slope, z = data$SSE, 
              type = "scatter3d", mode="markers") %>%
        layout(title = 'SCORE (or SSE) from your eyeball model', 
               scene = list(xaxis=list(title = 'Intercept'),
                            yaxis=list(title = 'Slope'),
                            zaxis=list(title = 'SCORE')))
    })
  })
  
  # if you click
  observeEvent(eventExpr = input$plot_click, handlerExpr = { 
    
    click_saved$singleclick <- rbind(click_saved$singleclick, c(input$plot_click[1], input$plot_click[2])) 
    if(dim(click_saved$singleclick)[1]>2)
      click_saved$singleclick <- as.data.frame(click_saved$singleclick[dim(click_saved$singleclick)[1],])
    
    if(!is.null(input$file1)){
      mydata <- read.table(input$file1$datapath,
                           header = input$header,
                           row.names = NULL,
                           sep = ',')
      mydata <- mydata %>% dplyr::select(where(is.numeric))
      mydata <- mydata[,c(1,2)]
      colnames(mydata) <- c('x','y')
    }
    
    if(dim(click_saved$singleclick)[1]==2){
      ys <- as.vector(unlist(click_saved$singleclick[,2]))
      xs <- as.vector(unlist(click_saved$singleclick[,1]))
      fit <- lm(ys~xs)
      
      # projections
      proj1 <- fit$coefficients[2] * mydata$x + fit$coefficients[1] 
      # residuals
      myscore <- NULL
      
      for(k in 1:dim(mydata)[1]){
        residuals <- rbind( mydata[k,], c(mydata[k,1], proj1[k]) )
        
        myscore <- rbind(myscore,(residuals[1,] -residuals[2,])^2)
      }
      
      data = as.data.frame(rbind(data, c(intercept = fit$coefficients[1],
                                         slope = fit$coefficients[2],
                                         SSE = round(sum(colSums(myscore)),2))))
    }
    
    output$plot1 <- renderPlot({
      plot(mydata$x, mydata$y, xlab='Female literacy rate (%)', ylab='Life Expectancy (years)', pch=16)
      
      points(click_saved$singleclick[,1], click_saved$singleclick[,2], col='red', pch=16)
      if(dim(click_saved$singleclick)[1]==2){
        ys <- as.vector(unlist(click_saved$singleclick[,2]))
        xs <- as.vector(unlist(click_saved$singleclick[,1]))
        fit <- lm(ys~xs)
        abline(fit, col='red')
        
        # projections
        proj1 <- fit$coefficients[2] * mydata$x + fit$coefficients[1] 
        points(mydata$x, proj1, col='purple')
        
        # residuals
        myscore <- NULL
        
        for(k in 1:dim(mydata)[1]){
          residuals <- rbind( mydata[k,], c(mydata[k,1], proj1[k]) )
          lines(residuals, col='purple')
          
          myscore <- rbind(myscore,(residuals[1,] -residuals[2,])^2)
        }
        
        
        mtext(paste("Your SCORE (or SSE) is", format(round(sum(colSums(myscore)),2), nsmall=1, big.mark = ',')), side=3)
        
        output$check <- renderText(paste("Fitted model: E(life expectancy|literacy rate) = ", 
                                         format(round(fit$coefficients[2],2), nsmall=1, big.mark = ','),
                                         "*literacy rate + ", 
                                         format(round(fit$coefficients[1],2),nsmall=1, big.mark = ','), 
                                         sep=""))
        
      }
      
      
    })
    
    plotlyProxy("plot2") %>%
      plotlyProxyInvoke("addTraces", 
                        list(x = c(data$intercept, data$intercept), # need at least 2 points
                             y = c(data$slope, data$slope),
                             z = c(data$SSE, data$SSE), 
                             type = "scatter3d",
                             mode = "markers"
                        )
      )
    
    
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)