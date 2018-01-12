#Load the required libraries

library(data.table)
library(reshape2)
library(dplyr)

# Load the train and test datasets into data frames
# Load the activity and subject data and add them to the correspondent train and test sets.

train<-fread("./train/X_train.txt", header=FALSE, sep=" ")
train_activity <- read.csv('./train/y_train.txt', header = FALSE, sep = " ")
train_subject <- read.csv('./train/subject_train.txt',header = FALSE, sep = " ")
train1<-cbind(train_activity,train_subject,train)

test <-fread("./test/X_test.txt",  header=FALSE, sep=" ")
test_activity <-read.csv('./test/y_test.txt', header = FALSE, sep = " ")
test_subject <- read.csv('./test/subject_test.txt',header = FALSE, sep = " ")
test1<-cbind(test_activity,test_subject,test)

# Combine test and train into a single data set.

mydata0<- rbind(train1,test1)

# Load the feature labels and assign them to the column names for training and test sets.

labels<-fread("features.txt", header=FALSE, sep=" ")
labels<-labels[,c(2)]
labels2<-t(labels)
names(mydata0) <- c("activity","subject", labels2)

mydata3<-as.data.frame(mydata0)

# Filter out all feature columns that do not contain the measures mean or standard deviation

meanStdCols<-grep("mean|std",names(mydata0), value=TRUE) # 79 columns
mydata4<-mydata0[, !duplicated(colnames(mydata0))] #Remove duplicated columns
mydata5<-select(mydata4,grep("mean|std|activity|subject",names(mydata4), value=TRUE)) # select columns with mean and stddev

# Load the activity labels

activity_labels <- read.table('activity_labels.txt', header = FALSE)
activity_labels <- as.character(activity_labels[,2])

# Substitute the activity number with the descriptive activity names

mydata5$activity<-gsub(1,"WALKING",mydata5$activity)
mydata5$activity<-gsub(2,"WALKING_UPSTAIRS",mydata5$activity)
mydata5$activity<-gsub(3,"WALKING_DOWNSTAIRS",mydata5$activity)
mydata5$activity<-gsub(4,"SITTING",mydata5$activity)
mydata5$activity<-gsub(5,"STANDING",mydata5$activity)
mydata5$activity<-gsub(6,"LAYING",mydata5$activity)

# Label the data set with more descriptive variable names

Meaningful_colnames<-names(mydata5)
Meaningful_colnames <- gsub("Acc", "Accelerometer", Meaningful_colnames)
Meaningful_colnames <- gsub("Gyro", "Gyroscope", Meaningful_colnames)
Meaningful_colnames <- gsub("sma", "SignalMagArea", Meaningful_colnames)
Meaningful_colnames <- gsub("Mag", "Magnitude", Meaningful_colnames)
Meaningful_colnames <- gsub("[(][)]", "", Meaningful_colnames)
Meaningful_colnames <- gsub("^t", "Time", Meaningful_colnames)
Meaningful_colnames <- gsub("^f", "Frequency", Meaningful_colnames)
Meaningful_colnames <- gsub("-std-", "_StdDev_", Meaningful_colnames)
Meaningful_colnames <- gsub("-iqr-", "_Interquartile_", Meaningful_colnames)
names(mydata5) <-Meaningful_colnames

# Use melt and dcast to calculate the average of each variable for each activity and each subject

new_var <- melt(mydata5, id=c("subject","activity"))
tidy_data <- dcast(new_var, subject+activity ~ variable, mean)

# save tidy data into a csv file
write.csv(tidy_data, "dataAssign3.csv", row.names=FALSE)
