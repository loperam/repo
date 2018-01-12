Getting and Cleaning Data Course Project

The following steps need to be done before running the script

Download the zip file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Extract the contents of the file.
Set the working directory to the location where you extracted the files.
Save the R script to the same directory as above.
Run the script run_analysis.R


Explanation of processing steps 

I read the train and test datasets into data frames using the function fread from the data.table library.
Loaded the activity and subject data and added them to the correspondent train and test sets.
Loaded the feature labels and assigned them to the column names for training and test sets.
Combined test and train into a single data set.
Filtered out all feature columns that did not contain the measures mean or standard deviation; this left 79 feature columns, plus the subject and activity columns to give a total of 81 columns.
Substituted the activity number with the descriptive activity names.
Labeled the data set with more descriptive variable names
Used melt and dcast from the reshape2 library to calculate the average of each variable for each activity and each subject.

The resultant tidy data set contains 180 observations that correspond to 6 activities performed by 30 subjects, with the average of the measures mean or standard deviation of each feature.
Tidy data set was written to a txt file.
