# run_analysis
## Getting and Cleaning Data Course Project
This is a repository for the course project of the online course Getting and Cleaning Data from Coursera. 
It contains one script file, called run_analysis.R.

The run_analysis.R code is for creating a new tidy data set with the average of each variable for each activity and each subject from the raw data.

##Procedure
*Download the row data from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
*Extract it into the data directory under your working directory.
*Source and execute R code run_analysis.R.
*It will generate a text file named "Tidy_dataset.txt" into the working directory.

##Goals of the script
The goal of the run_analysis.R script is to accomplish the following steps:

*Load all the necessary data sources.
*Add descriptive activity names.
*Merges the training and the test sets to create one full data set and labels the data set with descriptive variable names.
*Subset only the measurements on the mean and standard deviation for each measurement and compute means grouped by person and activity.
*Write results to the Tidy_dataset.txt file.