Code Book
========================================================

## Data Origin
The processed data bases on the Human Activity Recognition Using Smartphones dataset available at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). For more details, see the information provided there.

To compute the datasets below, the version provided at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) was used.

Both datasets include the training and the test data.

## 1. Tidy Dataset
The first dataset contains different mean and standard deviation measurements.

### Context Columns
Subject

Activity

### Measure Columns
tBodyAcc-mean()-X

tBodyAcc-mean()-Y

tBodyAcc-mean()-Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyAccMag-mean()

tGravityAccMag-mean()

tBodyAccJerkMag-mean()

tBodyGyroMag-mean()

tBodyGyroJerkMag-mean()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyAccMag-mean()

fBodyBodyAccJerkMag-mean()

fBodyBodyGyroMag-mean()

fBodyBodyGyroJerkMag-mean()

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z

tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z

tBodyAccMag-std()

tGravityAccMag-std()

tBodyAccJerkMag-std()

tBodyGyroMag-std()

tBodyGyroJerkMag-std()

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z

fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z

fBodyAccMag-std()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-std()


## 2. Tidy Dataset 2
The second dataset is an aggregation of the first dataset. It shows all measurements averaged per subject and activity. The columns equal to the ones provided in the first dataset.