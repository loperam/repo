#Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. It is required to submit: 1) a tidy data set, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data. 

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##About the data

The experiments were carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

###Variables and summaries calculated

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*	tBodyAcc-XYZ
*	tGravityAcc-XYZ
*	tBodyAccJerk-XYZ
*	tBodyGyro-XYZ
*	tBodyGyroJerk-XYZ
*	tBodyAccMag
*	tGravityAccMag
*	tBodyAccJerkMag
*	tBodyGyroMag
*	tBodyGyroJerkMag
*	fBodyAcc-XYZ
*	fBodyAccJerk-XYZ
*	fBodyGyro-XYZ
*	fBodyAccMag
*	fBodyAccJerkMag
*	fBodyGyroMag
*	fBodyGyroJerkMag

###Units

The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
Note: features are normalized and bounded within [-1,1].

###Set of variables that were estimated from these signals and appear in the submitted dasaset are: 

*	mean: Mean value
*	StdDev: Standard deviation

###Abbreviations of measurements

*	Leading t or f is based on time or frequency measurements
*	Body - related to body movement
*	Gravity - acceleration of gravity
*	Acc - accelerometer measurement
*	Gyro - gyroscopic measurements
*	Jerk - sudden movement acceleration
*	Mag - magnitude of movement
*	mean and StdDev are calculated for each subject for each activity

