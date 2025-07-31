# Regression Model Math Score

# Preparing the data set
df_plot_por <- df_clean
prep_cols <- c("schoolsup_por", "famsup_por", "paid_por", "activities_por")
df_plot_por[prep_cols] <- lapply(df_plot_por[prep_cols], function(x) ifelse(tolower(as.character(x)) == "yes", 1, 0))


# Linear Regression

model_por <- lm(g3_por ~ schoolsup_por + famsup_por + paid_por + activities_por, data = df_plot_por)

summary(model_por)