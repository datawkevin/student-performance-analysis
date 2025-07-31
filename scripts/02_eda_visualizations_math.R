# EDA and Vizualizations (Math Scores)

df_clean <- df_subset

# School Support

summary_schoolsup_mat <- df_clean %>%
  group_by(schoolsup_mat) %>%
  summarize(
    count = n(),
    mean = mean(g3_mat, na.rm = TRUE),
    median = median(g3_mat, na.rm = TRUE),
    sd = sd(g3_mat, na.rm = TRUE),
    min = min(g3_mat, na.rm = TRUE),
    max = max(g3_mat, na.rm = TRUE)
  )

print(summary_schoolsup_mat)

# Vizualization School Support

ggplot(df_clean, aes(x = schoolsup_mat, y = g3_mat)) +
         geom_boxplot() +
         labs(title = "Math Score by School Support",
              x = "School Support",
              y = "Final Grade"
              ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )
       
# Family Support

summary_famsup_mat <- df_clean %>%
  group_by(famsup_mat) %>%
  summarize(
    count = n(),
    mean = mean(g3_mat, na.rm = TRUE),
    median = median(g3_mat, na.rm = TRUE),
    sd = sd(g3_mat, na.rm = TRUE),
    min = min(g3_mat, na.rm = TRUE),
    max = max(g3_mat, na.rm = TRUE)
  )

print(summary_famsup_mat)

# Vizualization Family Support

ggplot(df_clean, aes(x = famsup_mat, y = g3_mat)) +
  geom_boxplot() +
  labs(title = "Math Score by Family Support",
       x = "Family Support",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )

# Extra Paid Classes Within The Course Subject

summary_paid_mat <- df_clean %>%
  group_by(paid_mat) %>%
  summarize(
    count = n(),
    mean = mean(g3_mat, na.rm = TRUE),
    median = median(g3_mat, na.rm = TRUE),
    sd = sd(g3_mat, na.rm = TRUE),
    min = min(g3_mat, na.rm = TRUE),
    max = max(g3_mat, na.rm = TRUE)
  )

print(summary_paid_mat)

# Vizualization Extra Paid Classes

ggplot(df_clean, aes(x = paid_mat, y = g3_mat)) +
         geom_boxplot() +
         labs(title = "Math Score by Extra Paid Classes",
              x = "Extra Paid Classes",
              y = "Final Grade"
              ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )

# Extra Curricular Activities

summary_activities_mat <- df_clean %>%
  group_by(activities_mat) %>%
  summarize(
    count = n(),
    mean = mean(g3_mat, na.rm = TRUE),
    median = median(g3_mat, na.rm = TRUE),
    sd = sd(g3_mat, na.rm = TRUE),
    min = min(g3_mat, na.rm = TRUE),
    max = max(g3_mat, na.rm = TRUE)
  )

print(summary_activities_mat)

# Visualization Extra Curricular Activities

ggplot(df_clean, aes(x = activities_mat, y = g3_mat)) +
  geom_boxplot() +
  labs(title = "Math Score by Extra Curricular Activities",
       x = "Extra Curricular Activities",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )