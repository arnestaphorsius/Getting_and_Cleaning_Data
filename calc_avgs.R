
# Extract only the necessary measurements
mean_std <- data[, grepl("Subject|Activity|mean|std", names(data))]

# Group by Activity and Subject and calculate the averages
averages <- group_by(mean_std, Activity, Subject) %>% summarise_each(funs(mean))

# Remove ActivityNo column for tidyness
averages <- averages[, !names(averages) %in% c("ActivityNo")]