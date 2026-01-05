
library(tidyverse)

# Test de normalité (Shapiro)
test_normality_prcp <- function(weather) {
    shapiro.test(na.omit(weather$PRCP))
}

# Test non paramétrique : PRCP ~ Month
test_seasonality <- function(weather) {
    kruskal.test(PRCP ~ Month, data = weather)
}

# Corrélation non paramétrique
compute_correlations <- function(weather) {
    weather %>%
        select(PRCP, DAPR, MDPR) %>%
        cor(use = "complete.obs", method = "spearman")
}

# Analyse événements extrêmes
extreme_rain_by_month <- function(weather) {
    weather %>%
        filter(ExtremeRain == TRUE) %>%
        count(Month)
}
