# Analyse des données météorologiques – Station US1TXGS0046 (Texas)

## Présentation du projet
Ce projet consiste en une analyse exploratoire et statistique de données
météorologiques réelles issues de la base **NOAA – Global Historical Weather Data**.
Les données proviennent de la station **US1TXGS0046**, située au Texas (USA).

L’objectif est d’étudier le comportement des précipitations et des températures
apparentes, d’identifier une éventuelle saisonnalité et de mettre en évidence
des relations statistiques pertinentes.

---

## Problématique
- Les précipitations présentent-elles une saisonnalité marquée ?
- Existe-t-il des différences significatives entre les mois et les saisons ?
- Les températures apparentes minimales et maximales sont-elles corrélées ?
- Les événements de précipitations extrêmes sont-ils concentrés sur certaines
  périodes de l’année ?

---

## Données
- **Source** : NOAA – Global Historical Weather Data  
- **Station** : US1TXGS0046  
- **Localisation** : Texas, USA  
- **Période** : plusieurs années  
- **Observations** : 3087 lignes  
- **Variables principales** :
  - PRCP : précipitations (mm)
  - SNOW : neige (mm)
  - DAPR : température apparente minimale (°C)
  - MDPR : température apparente maximale (°C)

---

## Outils et technologies
- **Langage** : R  
- **IDE** : RStudio  
- **Reporting** : Quarto  
- **Packages principaux** :
  - tidyverse
  - lubridate
  - ggplot2

---

## Méthodologie
Le projet suit les étapes suivantes :

1. Chargement et nettoyage des données  
2. Analyse exploratoire des données (EDA)  
3. Visualisation temporelle et distributionnelle  
4. Feature engineering (mois, année, jours pluvieux, événements extrêmes)  
5. Tests statistiques :
   - Test de normalité (Shapiro-Wilk)
   - Test non paramétrique de Kruskal-Wallis
6. Analyse des corrélations non paramétriques (Spearman)
7. Modélisation par régression linéaire simple

---

## Résultats principaux
- Les précipitations présentent une **forte asymétrie** avec une majorité de
  journées sèches.
- Une **saisonnalité marquée** est observée, avec des précipitations plus
  intenses durant les mois estivaux.
- Les **événements de précipitations extrêmes** sont majoritairement concentrés
  entre mai et septembre.
- Les corrélations linéaires entre températures et précipitations sont faibles.
- La régression linéaire entre DAPR et MDPR ne révèle pas de relation significative.

---

## Structure du projet