## Coodbook
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
The resulting variables of the output are:
- "PersonID" 
- "ActivityName" 
- "ActivityID" 
- "tBodyAcc-mean()-X"
- "tBodyAcc-mean()-Y" 
- "tBodyAcc-mean()-Z"
- ...
