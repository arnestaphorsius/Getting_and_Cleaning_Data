
# Read the test set and its labels
x_test <- read.table(file = "./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table(file = "./UCI HAR Dataset/test/y_test.txt")
s_test <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt")
test <- cbind(s_test, cbind(y_test, x_test))

# Read the training data and its labels
x_train <- read.table(file = "./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table(file = "./UCI HAR Dataset/train/y_train.txt")
s_train <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt")
train <- cbind(s_train, cbind(y_train, x_train))

# Bind the 2 sets together
data <- rbind(test, train)