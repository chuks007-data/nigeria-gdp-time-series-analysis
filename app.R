install.packages("shiny")
install.packages("readxl")
install.packages("forecast")


shiny::runApp()
library(readxl)
GDP_yearly_data <- read_excel("C:/Users/USER/Desktop/Nigeria-GDP-Forecasting/GDP yearly data.xlsx")
View(GDP_yearly_data)
library(shiny)
library(readxl)
library(forecast)

# Load data
gdp <- read_excel("C:/Users/USER/Desktop/Nigeria-GDP-Forecasting/GDP yearly data.xlsx")
View(GDP_yearly_data)

# Convert to time series
gdp_ts <- ts(
  gdp$`GDP growth (annual %)`,
  start = min(gdp$Year),
  end = max(gdp$Year),
  frequency = 1
)

# Fit ARIMA model
arima_model <- arima(gdp_ts, order = c(1,0,1))

# Forecast next 5 years
forecast_values <- forecast(arima_model, h = 5)

# User Interface
ui <- fluidPage(
  titlePanel("Nigeria GDP Growth Forecast"),
  
  plotOutput("forecastPlot"),
  
  tableOutput("forecastTable")
)

# Server
server <- function(input, output) {
  
  output$forecastPlot <- renderPlot({
    plot(forecast_values,
         main = "ARIMA Forecast of Nigeria GDP Growth")
  })
  
  output$forecastTable <- renderTable({
    data.frame(forecast_values)
  })
}

# Run App
shinyApp(ui = ui, server = server)

