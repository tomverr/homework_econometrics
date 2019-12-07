############ HOMEWORK 2019 - TOM VERRIER ##########################
###################################################################

#Load necessary packages
library(readxl)
library(tidyverse)
library(descr)
library(broom)

############ 1) DESCRIPTION OF THE SAMPLE #########################
###################################################################

#Import database
df_wages <- read_excel("data/DataSetWages.xlsx")
df_intRate <- read_excel("data/DatasetInterestRates.xlsx")

####QUESTION 1 - Table of the descriptive statistics of the data###
```{r , fig.width = 5, fig.height = 4, warning = FALSE, echo = FALSE, error = FALSE, message = FALSE, fig.align='center'}
table <- df_sumEnvironment %>%
  summarise(mean_score = mean(df_sumEnvironment$Value , na.rm = T),
            sd_score = sd(df_sumEnvironment$Value, na.rm = T),
            min_score = min(df_sumEnvironment$Value, na.rm = T),
            max_score = max(df_sumEnvironment$Value, na.rm = T))

kable(table, caption = 'Basic statistics on CO2 emissions (tonnes of CO2-equivalent OECD estimate')

mean_score = mean(df_sumEnvironment$Value , na.rm = T)
```