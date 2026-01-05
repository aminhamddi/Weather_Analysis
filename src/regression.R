library(tidyverse)

# Régression MDPR ~ DAPR
run_temperature_regression <- function(weather) {
    weather_lm <- weather %>%
        drop_na(DAPR, MDPR)

    model <- lm(MDPR ~ DAPR, data = weather_lm)

    list(
        model = model,
        summary = summary(model),
        data = weather_lm
    )
}

# Visualisation de la régression
plot_regression <- function(weather_lm) {
    ggplot(weather_lm, aes(x = DAPR, y = MDPR)) +
        geom_point(alpha = 0.5, color = "blue") +
        geom_smooth(method = "lm", color = "red") +
        labs(
            title = "Régression linéaire : MDPR en fonction de DAPR",
            x = "DAPR (°C)",
            y = "MDPR (°C)"
        ) +
        theme_minimal()
}
