Script Documentation
========================================================

## Step 1 - Data loading/merging
This step merges the training and the test sets so that we get one dataset in the end.
It is assumed that the working directory is set to the location of the script and that the that the provided zip archive has been extracted into subfolder 'UCI HAR Dataset'. For later convenience, I am also adding the subject and activity here.

## Step 2 - Extraction of certain columns
In step 2, I extract the mean and standard deviation columns from the dataset. As there are a lot of columns, I use the features dataset included to name all measurement columns first. After that, I use a regular expression to select only the
mean() and std() columns into the dataset variable.

## Step 3 - Usage of descriptive activity names
As I understood, this step is only to load the provided activity names into a variable - as is done in this step.

## Step 4 - Appropriate labeling of activities
In step 4, I lookup the label that belongs to the number in the Activity column and replace the value of the respective Activity against the descriptive activity name. As a result, the values in the Activity column are more descriptive.

## Step 5 - Creation of a second dataset
In step 5, I use the data.table package to create a second, independent tidy data set which contains the average of each variable for each activity and each subject.