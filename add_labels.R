
# Read in lookup table for activities
lookup_activity <- read.table(file = "./UCI HAR Dataset/activity_labels.txt")
colnames(lookup_activity) <- c("ActivityNo", "Activity")

# Name the subject and activity number columns
colnames(data)[1:2] <- c("Subject", "ActivityNo")

# Join the data with the activity names
data <- join(lookup_activity, data, by = "ActivityNo")

# Read lookup tables of features and use those to label the remaining columns
lookup_features <- read.table(file = "./UCI HAR Dataset/features.txt")
colnames(data)[4:564] <- as.vector(lookup_features$V2)