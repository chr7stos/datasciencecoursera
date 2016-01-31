##Getting and cleaning Data

### Get the data
The dataset zip containing the data and description of the data can be downloaded here:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

#### Overview
An overview of the project can be found in the `README.md` in the `UCI HAR Dataset` folder.


### The analysis script to clean and tidy the data

The script `run_analysis.R` is built under the following instructions:

1. Merges the training and the test sets to create one data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set 
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


For the script to work, you have to save the data in a folder named `data` in your **working directory**.

The detailed variables located in the **tidy.txt** file that is generated at the end of the `run_analysis.R` script are documented in the `CodeBook.md`.







