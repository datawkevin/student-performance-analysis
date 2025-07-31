# Creating subset of the data

df_subset <- df_merged %>%
  mutate(across(where(is.character), as.factor)) %>%
  select(schoolsup_mat,famsup_mat, paid_mat, activities_mat, g3_mat, schoolsup_por, famsup_por, paid_por, activities_por, g3_por)

# Checking missing values

colSums(is.na(df_subset))

# Ensuring categories are as factors

sapply(df_subset, class)