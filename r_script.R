library(tidyverse)
library(rvest)
library(lubridate)
raw_data <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")

 raw_data <- raw_data %>%
  html_elements("td:nth-child(4)") %>%
  html_text() %>%
  as_tibble()

write_csv(raw_data, "birthdates.csv")

 
  