
library(data.table)
library(dplyr)
library(reshape2)

if(!file.exists("./data")){
    dir.create("./data") } 

### Download the zip file:

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest1 = "./data/get_clean_data.zip"
download.file(fileURL, dest1, method="curl")

### Unzip the file

if (!file.exists("UCI HAR Dataset")) { 
    unzip(dest1) 
}

### Load activity labels and features
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", colClasses = c("integer", "character"))
features <- read.table("./data/UCI HAR Dataset/features.txt", colClasses = c("integer", "character"))

### Load test and train tables


y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt") # Test labels


### Convert the activity IDs into the activity labels by looping and substituting (descriptive activity names)
for(i in 1:length(y_test[,1])){
    y_test[,1][i] <- as.character(activityLabels[[y_test[,1][i],2]])
}

X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt") # Test sets
setnames(X_test, names(X_test), features[,2]) # Set the names of the columns of X_test according to the namining in features

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")


test_merged <-cbind(y_test, subject_test, X_test)  # merged all test data by column  


y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt") # Training labels

### Convert the activity IDs into the activity labels by looping and substituting (descriptive activity names)
for(i in 1:length(y_train[,1])){
    y_train[,1][i] <- as.character(activityLabels[[y_train[,1][i],2]])
}

X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt") # Training set
setnames(X_train, names(X_train), features[,2]) # Set the names of the columns of X_train according to the namining in features

subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt") 


train_merged <-cbind(y_train, subject_train, X_train) # merge all train data by column


### Merge all data into one data set
allData <- rbind(test_merged, train_merged)
colnames(allData)[1:2] <- c("Activity", "Subject")


### Select only the columns with column names including mean and std

allDataRel <- allData[,grep("mean\\(\\)|std\\(\\)|Activity|Subject", colnames(allData), value = TRUE)]

### Rename into more descriptive names

names(allDataRel)<-gsub("\\(\\)", "", names(allDataRel))
names(allDataRel)<-gsub("std", "StandardDeviation", names(allDataRel))
names(allDataRel)<-gsub("mean", "Mean", names(allDataRel))
names(allDataRel)<-gsub("^t", "Time", names(allDataRel))
names(allDataRel)<-gsub("^f", "Frequency", names(allDataRel))


write.table(allDataRel, "tidy.txt", row.name = FALSE)
