install.packages(c("tidyverse","janitor"))
library(tidyverse)
library(janitor)

# Loading and merging the data sets

df_mat <- read_delim("student_performance_dataset/student-mat.csv", delim = ";", col_names=TRUE) %>%
  clean_names() 
df_por <- read_delim("student_performance_dataset/student-por.csv", delim = ";", col_names=TRUE) %>%
  clean_names()


df_merged <- inner_join(
  df_mat,
  df_por,
  by = c("school","sex","age","address","famsize","pstatus","medu","fedu","mjob","fjob","reason","nursery","internet"),
  suffix = c("_mat", "_por")
)
  

# Check for duplicates
nrow(df_merged)

# Check structure

str(df_merged)
summary(df_merged)
        
