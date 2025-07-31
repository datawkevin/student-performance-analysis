# Regression Model Math Score

# Preparing the data set
df_plot_mat <- df_clean
prep_cols <- c("schoolsup_mat", "famsup_mat", "paid_mat", "activities_mat")
df_plot_mat[prep_cols] <- lapply(df_plot_mat[prep_cols], function(x) ifelse(tolower(as.character(x)) == "yes", 1, 0))


# Linear Regression

model_math <- lm(g3_mat ~ schoolsup_mat + famsup_mat + paid_mat + activities_mat, data = df_plot_mat)

summary(model_math)