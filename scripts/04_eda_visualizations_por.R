# EDA and Vizualizations (Portuguese Scores)

df_clean <- df_subset

# School Support

summary_schoolsup_por <- df_clean %>%
  group_by(schoolsup_por) %>%
  summarize(
    count = n(),
    mean = mean(g3_por, na.rm = TRUE),
    median = median(g3_por, na.rm = TRUE),
    sd = sd(g3_por, na.rm = TRUE),
    min = min(g3_por, na.rm = TRUE),
    max = max(g3_por, na.rm = TRUE)
  )

print(summary_schoolsup_por)

# Vizualization School Support

ggplot(df_clean, aes(x = schoolsup_por, y = g3_por)) +
  geom_boxplot() +
  labs(title = "Portuguese Score by School Support",
       x = "School Support",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )

# Family Support

summary_famsup_por <- df_clean %>%
  group_by(famsup_por) %>%
  summarize(
    count = n(),
    mean = mean(g3_por, na.rm = TRUE),
    median = median(g3_por, na.rm = TRUE),
    sd = sd(g3_por, na.rm = TRUE),
    min = min(g3_por, na.rm = TRUE),
    max = max(g3_por, na.rm = TRUE)
  )

print(summary_famsup_por)

# Visualization Family Support

ggplot(df_clean, aes(x = famsup_por, y = g3_por)) +
  geom_boxplot() +
  labs(title = "Portuguese Score by Family Support",
       x = "Family Support",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )

# Extra Paid Classes Within The Course Subject

summary_paid_por <- df_clean %>%
  group_by(paid_por) %>%
  summarize(
    count = n(),
    mean = mean(g3_por, na.rm = TRUE),
    median = median(g3_por, na.rm = TRUE),
    sd = sd(g3_por, na.rm = TRUE),
    min = min(g3_por, na.rm = TRUE),
    max = max(g3_por, na.rm = TRUE)
  )

print(summary_paid_por)

# Visualization Extra Paid Classes

ggplot(df_clean, aes(x = paid_por, y = g3_por)) +
  geom_boxplot() +
  labs(title = "Portuguese Score by Extra Paid Classes",
       x = "Extra Paid Classes",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )

# Extra Curricular Activities

summary_activities_por <- df_clean %>%
  group_by(activities_por) %>%
  summarize(
    count = n(),
    mean = mean(g3_por, na.rm = TRUE),
    median = median(g3_por, na.rm = TRUE),
    sd = sd(g3_por, na.rm = TRUE),
    min = min(g3_por, na.rm = TRUE),
    max = max(g3_por, na.rm = TRUE)
  )

print(summary_activities_por)

# Visualization Extra Curricular Activities

ggplot(df_clean, aes(x = activities_por, y = g3_por)) +
  geom_boxplot() +
  labs(title = "Portuguese Score by Extra Curricular Activities",
       x = "Extra Curricular Activities",
       y = "Final Grade"
  ) +
  theme_minimal() +
  theme(legend.position = "none",
        plot.title = element_text(hjust = 0.5)
  )