## Codebook
This is a codebook file for the data acquisition and analysis of Samsung Galaxy accelerometer application data.
 
##Background
The run_analysis.R script reads the smart phone sensor data from the test and train data in their respective sub-folders and produces a simplified data frame with only the standard deviation and mean variables. See details in the README.md.

## Input data
Raw data was obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The row data description is available here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The row data set files used by the script are:
-  /train/X_train.txt
-  /train/subject_train.txt
-  /train/y_train.txt
-  /test/X_test.txt
-  /test/subject_test.txt
-  /test/y_test.txt
-  features.txt
  
## Transformations
The run_analysis.R script accomplish the following steps:

* Load all the necessary data sources.
* Add descriptive activity names.
* Merges the training and the test sets to create one full data set and labels the data set with descriptive variable names.
* Subset only the measurements on the mean and standard deviation for each measurement and compute means grouped by person and activity.
* Write results to the Tidy_dataset.txt file.

## Output data
The code in 'run_analysis.R' creates a 'wide' data set that has 180 observations of 68 variables as follows:
- "PersonID" 
- "ActivityName" 
- "ActivityID" 
- "tBodyAcc-mean()-X"
- "tBodyAcc-mean()-Y" 
- "tBodyAcc-mean()-Z"
- "tBodyAcc-std()-X" 
- "tBodyAcc-std()-Y" 
- "tBodyAcc-std()-Z" 
- "tGravityAcc-mean()-X" 
- "tGravityAcc-mean()-Y" 
- "tGravityAcc-mean()-Z" 
- "tGravityAcc-std()-X" 
- "tGravityAcc-std()-Y" 
- "tGravityAcc-std()-Z" 
- "tBodyAccJerk-mean()-X" 
- "tBodyAccJerk-mean()-Y" 
- "tBodyAccJerk-mean()-Z" 
- "tBodyAccJerk-std()-X" 
- "tBodyAccJerk-std()-Y" 
- "tBodyAccJerk-std()-Z"
- "tBodyGyro-mean()-X" 
- "tBodyGyro-mean()-Y" 
- "tBodyGyro-mean()-Z" 
- "tBodyGyro-std()-X" 
- "tBodyGyro-std()-Y" 
- "tBodyGyro-std()-Z" 
- "tBodyGyroJerk-mean()-X" 
- "tBodyGyroJerk-mean()-Y" 
- "tBodyGyroJerk-mean()-Z" 
- "tBodyGyroJerk-std()-X" 
- "tBodyGyroJerk-std()-Y" 
- "tBodyGyroJerk-std()-Z" 
- "tBodyAccMag-mean()" 
- "tBodyAccMag-std()" 
- "tGravityAccMag-mean()" 
- "tGravityAccMag-std()" 
- "tBodyAccJerkMag-mean()" 
- "tBodyAccJerkMag-std()" 
- "tBodyGyroMag-mean()" 
- "tBodyGyroMag-std()" 
- "tBodyGyroJerkMag-mean()" 
- "tBodyGyroJerkMag-std()" 
- "fBodyAcc-mean()-X" 
- "fBodyAcc-mean()-Y" 
- "fBodyAcc-mean()-Z" 
- "fBodyAcc-std()-X" 
- "fBodyAcc-std()-Y" 
- "fBodyAcc-std()-Z" 
- "fBodyAcc-meanFreq()-X"
- "fBodyAcc-meanFreq()-Y"
- "fBodyAcc-meanFreq()-Z"
- "fBodyAccJerk-mean()-X"
- "fBodyAccJerk-mean()-Y"
- "fBodyAccJerk-mean()-Z"
- "fBodyAccJerk-std()-X" 
- "fBodyAccJerk-std()-Y" 
- "fBodyAccJerk-std()-Z" 
- "fBodyAccJerk-meanFreq()-X"
- "fBodyAccJerk-meanFreq()-Y"
- "fBodyAccJerk-meanFreq()-Z"
- "fBodyGyro-mean()-X" 
- "fBodyGyro-mean()-Y" 
- "fBodyGyro-mean()-Z" 
- "fBodyGyro-std()-X" 
- "fBodyGyro-std()-Y" 
- "fBodyGyro-std()-Z" 
- "fBodyGyro-meanFreq()-X" 
- "fBodyGyro-meanFreq()-Y"
- "fBodyGyro-meanFreq()-Z"
- "fBodyAccMag-mean()"
- "fBodyAccMag-std()"
- "fBodyAccMag-meanFreq()"
- "fBodyBodyAccJerkMag-mean()"
- "fBodyBodyAccJerkMag-std()" 
- "fBodyBodyAccJerkMag-meanFreq()"
- "fBodyBodyGyroMag-mean()"
- "fBodyBodyGyroMag-std()" 
- "fBodyBodyGyroMag-meanFreq()"
- "fBodyBodyGyroJerkMag-mean()"
- "fBodyBodyGyroJerkMag-std()" 
- "fBodyBodyGyroJerkMag-meanFreq()"


















