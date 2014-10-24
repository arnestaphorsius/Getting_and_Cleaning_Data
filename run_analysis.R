
# Load required packages
library(plyr)
library(dplyr)

# Get the data in a required initial state
source("read_data.R")

# Prettify the raw data by adding labels
source("add_labels.R")

# Create the required tidy data set with all averages
source("calc_avgs.R")

# Create output
write.table(x = averages, file = "tidy_data_set.txt", row.names = FALSE)