if (!require(dplyr)) install.packages("dplyr", quiet = TRUE)
if (!require(tidyr)) install.packages("tidyr", quiet = TRUE)

library(dplyr)
library(tidyr)

data_dir <- if (dir.exists("UCI HAR Dataset")) {
  "UCI HAR Dataset"
} else if (dir.exists("data/UCI HAR Dataset")) {
  "data/UCI HAR Dataset"
} else {
  stop("UCI HAR Dataset folder not found.\nPlease place it in your working directory: ", getwd())
}

features <- read.table(file.path(data_dir, "features.txt"),
                       col.names = c("feature_id", "feature_name"),
                       stringsAsFactors = FALSE)

activity_labels <- read.table(file.path(data_dir, "activity_labels.txt"),
                              col.names = c("activity_id", "activity_name"),
                              stringsAsFactors = FALSE)

X_train <- read.table(file.path(data_dir, "train", "X_train.txt"))
y_train <- read.table(file.path(data_dir, "train", "y_train.txt"), col.names = "activity_id")
subject_train <- read.table(file.path(data_dir, "train", "subject_train.txt"), col.names = "subject")

X_test <- read.table(file.path(data_dir, "test", "X_test.txt"))
y_test <- read.table(file.path(data_dir, "test", "y_test.txt"), col.names = "activity_id")
subject_test <- read.table(file.path(data_dir, "test", "subject_test.txt"), col.names = "subject")

X_all <- rbind(X_train, X_test)
y_all <- rbind(y_train, y_test)
subject_all <- rbind(subject_train, subject_test)

colnames(X_all) <- features$feature_name

merged_data <- cbind(subject_all, y_all, X_all)

mean_std_cols <- grep("mean\\(\\)|std\\(\\)", features$feature_name, value = TRUE)

extracted_data <- merged_data %>%
  select(subject, activity_id, all_of(mean_std_cols))

extracted_data <- extracted_data %>%
  left_join(activity_labels, by = "activity_id") %>%
  select(subject, activity = activity_name, everything(), -activity_id)

make_descriptive <- function(name) {
  name %>%
    gsub("^t", "time", .) %>%
    gsub("^f", "frequency", .) %>%
    gsub("BodyAcc", "BodyAccelerometer", .) %>%
    gsub("GravityAcc", "GravityAccelerometer", .) %>%
    gsub("BodyGyro", "BodyGyroscope", .) %>%
    gsub("BodyBodyAcc", "BodyAccelerometer", .) %>%
    gsub("BodyBodyGyro", "BodyGyroscope", .) %>%
    gsub("Jerk", "JerkSignal", .) %>%
    gsub("Mag", "Magnitude", .) %>%
    gsub("-mean\\(\\)", "-Mean", .) %>%
    gsub("-std\\(\\)", "-StdDev", .) %>%
    gsub("-X$", "-X-Axis", .) %>%
    gsub("-Y$", "-Y-Axis", .) %>%
    gsub("-Z$", "-Z-Axis", .) %>%
    gsub("[^A-Za-z0-9]", ".", .) %>%
    gsub("\\.+", ".", .) %>%
    gsub("\\.$", "", .)
}

old_names <- colnames(extracted_data)
new_names <- c("subject", "activity", make_descriptive(old_names[-(1:2)]))
colnames(extracted_data) <- new_names

tidy_data <- extracted_data %>%
  group_by(subject, activity) %>%
  summarise(across(everything(), mean, .names = "avg_{.col}"), .groups = "drop") %>%
  arrange(subject, activity)

write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE, quote = FALSE)

write.csv(tidy_data, file = "tidy_data.csv", row.names = FALSE)
