
library(tidyverse)
library(lubridate)

# Charger les données
load_weather_data <- function(path = "data/US1TXGS0046.csv") {
  
  weather <- read_csv(path, show_col_types = FALSE)
  
  weather <- weather %>%
    mutate(
      DATE = as.Date(DATE),
      PRCP = as.numeric(PRCP),
      SNOW = as.numeric(SNOW),
      DAPR = as.numeric(DAPR),
      MDPR = as.numeric(MDPR),
      
      # Feature engineering
      Month = month(DATE, label = TRUE, abbr = TRUE),
      Year = year(DATE),
      RainyDay = PRCP > 0,
      ExtremeRain = PRCP >= quantile(PRCP, 0.95, na.rm = TRUE)
    )
  
  return(weather)
}
