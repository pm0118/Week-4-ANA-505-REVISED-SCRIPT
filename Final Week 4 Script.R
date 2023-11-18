#Week 4: REVISED SCRIPT - dplyr package

Titanic_Edited <- as.data.frame(Titanic)

head(Titanic_Edited)

install.packages("dplyr")

library(dplyr)

selected_columns <- select(Titanic_Edited, Survived, Sex)

new_dataset <- selected_columns

write.csv(new_dataset, file = "new_dataset.csv", row.names = FALSE)

new_dataset_1 <- select(new_dataset, -Sex)

head(new_dataset_1)

Titanic_Edited_1 <- rename(Titanic_Edited, Gender = Sex)

head(Titanic_Edited_1)

Titanic_Edited_Gender <- as.data.frame(Titanic_Edited_1)

males_only <- filter(Titanic_Edited_Gender, Gender == "Male")

head(Titanic_Edited_Gender)

str(Titanic_Edited_Gender)

unique(Titanic_Edited_Gender$Gender)

males_only <- filter(Titanic_Edited_Gender, Gender == "Male")

head(males_only)

arranged_data <- arrange(Titanic_Edited_Gender, Gender)

head(arranged_data)

total_examined <- sum(Titanic_Edited$Freq)

print(total_examined)

females_only <- filter(Titanic_Edited_Gender, Gender == "Female")

head(females_only)

combined_dataset <- bind_rows(males_only, females_only)

head(combined_dataset)

combined_dataset <- combined_dataset %>%

mutate(Gender = recode(Gender, "Male" = "M", "Female" = "F"))

head(combined_dataset)