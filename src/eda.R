library(tidyverse)

# Résumé descriptif
eda_summary <- function(weather) {
    summary(weather %>% select(PRCP, SNOW, DAPR, MDPR))
}

# Précipitations dans le temps
plot_prcp_time <- function(weather) {
    ggplot(weather, aes(x = DATE, y = PRCP)) +
        geom_line(color = "steelblue") +
        labs(
            title = "Évolution des précipitations dans le temps",
            x = "Date",
            y = "Précipitations (mm)"
        ) +
        theme_minimal()
}

# Distribution des précipitations
plot_prcp_distribution <- function(weather) {
    ggplot(weather, aes(x = PRCP)) +
        geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
        labs(
            title = "Distribution des précipitations",
            x = "Précipitations (mm)",
            y = "Fréquence"
        ) +
        theme_minimal()
}

# Précipitations par mois
plot_prcp_by_month <- function(weather) {
    ggplot(weather, aes(x = Month, y = PRCP)) +
        geom_boxplot(fill = "lightblue") +
        labs(
            title = "Variabilité des précipitations selon le mois",
            x = "Mois",
            y = "Précipitations (mm)"
        ) +
        theme_minimal()
}
