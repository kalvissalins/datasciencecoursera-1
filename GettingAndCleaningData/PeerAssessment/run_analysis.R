##
# Does some data transformation/cleanup as required by the peer assignment of the Getting and Cleaning data course.
#

# Step 1 - Merges the training and the test sets to create one data set.
# notes: - this assumes that the provided zip archive has been extracted before
#        - for later convenience, we already add the subject and activity column here
subject <- rbind(
  read.table("UCI HAR Dataset/train/subject_train.txt", quote="\""),
  read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
  );
X <- rbind(
  read.table("UCI HAR Dataset/train/X_train.txt", quote="\""),
  read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
  );
y <- rbind(
  read.table("UCI HAR Dataset/train/y_train.txt", quote="\""),
  read.table("UCI HAR Dataset/test/y_test.txt", quote="\"")
  );
dataset <- cbind(subject, y, X);


# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
# load the feature names
features <- read.table("UCI HAR Dataset/features.txt", quote="\"");
# update column names to Subject, Activity and the names provided by the features variable
colnames(dataset) <- c("Subject", "Activity", as.character(features$V2));
# remove all measure columns whose names does not include "mean()" or "std()"
# note: the instructions are ambiguous. I decided to select all measures that either include
#       "mean()" or "std()" in their name.
dataset <- dataset[,c(1,2, rbind(grep("mean\\(\\)", colnames(dataset))), grep("std\\(\\)", colnames(dataset)))];


# Step 3 - Uses descriptive activity names to name the activities in the data set
# load the activity labels into the activity_labels variable
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"");


# Step 4 - Appropriately labels the data set with descriptive activity names
# update the value in the Activity column with the label provided by the activity_labels variable
dataset$Activity <- activity_labels[dataset$Activity,2];


# Step 5 - Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# coerce the dataset as data.table
require("data.table");
datasetAsDataTable <- data.table(dataset);
# use the data.table package to compute the second dataset
secondDataset <- datasetAsDataTable[, lapply(.SD, mean), by="Subject,Activity"];
