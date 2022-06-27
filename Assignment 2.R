library(tidyverse)
library(janitor)
library(dplyr)

# Importing Data File -- Childhood Poverty
Child_Pov <- read_csv("/Users/haliradecker/Documents/MSPP/Data Studio/Assignment 2/Children in poverty by race and ethnicity.csv")

ChildPov_CleanNames <- clean_names(Child_Pov)

# Select
ChildPov_Selected <- select(ChildPov_CleanNames, race, data, time_frame)

# Filter
ChildPov_Filtered <- filter(ChildPov_Selected, race == "Non-Hispanic White")

# Mutate
Childpov_mutated <- mutate(ChildPov_Filtered, time_frame =="2000")

# Group by
df_group_time <- group_by(Childpov_mutated, time_frame)

#summarize
summarize(df_group_time, mean(time_frame))

write_csv(df_group_time, )