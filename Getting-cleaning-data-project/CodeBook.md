##Getting and cleaning Data
##Codebook.md


The variables, together with their description are found in `features_info.txt` and `features.txt` in the `UCI HAR Dataset` folder.
The dataset zip containing the data and description of the data can be downloaded here:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The resulting variables (containing mean and std) are renamed as follows:
```r

 [1] "Activity"                                       "Subject"                                       
 [3] "TimeBodyAcc-Mean-X"                             "TimeBodyAcc-Mean-Y"                            
 [5] "TimeBodyAcc-Mean-Z"                             "TimeBodyAcc-StandardDeviation-X"               
 [7] "TimeBodyAcc-StandardDeviation-Y"                "TimeBodyAcc-StandardDeviation-Z"               
 [9] "TimeGravityAcc-Mean-X"                          "TimeGravityAcc-Mean-Y"                         
[11] "TimeGravityAcc-Mean-Z"                          "TimeGravityAcc-StandardDeviation-X"            
[13] "TimeGravityAcc-StandardDeviation-Y"             "TimeGravityAcc-StandardDeviation-Z"            
[15] "TimeBodyAccJerk-Mean-X"                         "TimeBodyAccJerk-Mean-Y"                        
[17] "TimeBodyAccJerk-Mean-Z"                         "TimeBodyAccJerk-StandardDeviation-X"           
[19] "TimeBodyAccJerk-StandardDeviation-Y"            "TimeBodyAccJerk-StandardDeviation-Z"           
[21] "TimeBodyGyro-Mean-X"                            "TimeBodyGyro-Mean-Y"                           
[23] "TimeBodyGyro-Mean-Z"                            "TimeBodyGyro-StandardDeviation-X"              
[25] "TimeBodyGyro-StandardDeviation-Y"               "TimeBodyGyro-StandardDeviation-Z"              
[27] "TimeBodyGyroJerk-Mean-X"                        "TimeBodyGyroJerk-Mean-Y"                       
[29] "TimeBodyGyroJerk-Mean-Z"                        "TimeBodyGyroJerk-StandardDeviation-X"          
[31] "TimeBodyGyroJerk-StandardDeviation-Y"           "TimeBodyGyroJerk-StandardDeviation-Z"          
[33] "TimeBodyAccMag-Mean"                            "TimeBodyAccMag-StandardDeviation"              
[35] "TimeGravityAccMag-Mean"                         "TimeGravityAccMag-StandardDeviation"           
[37] "TimeBodyAccJerkMag-Mean"                        "TimeBodyAccJerkMag-StandardDeviation"          
[39] "TimeBodyGyroMag-Mean"                           "TimeBodyGyroMag-StandardDeviation"             
[41] "TimeBodyGyroJerkMag-Mean"                       "TimeBodyGyroJerkMag-StandardDeviation"         
[43] "FrequencyBodyAcc-Mean-X"                        "FrequencyBodyAcc-Mean-Y"                       
[45] "FrequencyBodyAcc-Mean-Z"                        "FrequencyBodyAcc-StandardDeviation-X"          
[47] "FrequencyBodyAcc-StandardDeviation-Y"           "FrequencyBodyAcc-StandardDeviation-Z"          
[49] "FrequencyBodyAccJerk-Mean-X"                    "FrequencyBodyAccJerk-Mean-Y"                   
[51] "FrequencyBodyAccJerk-Mean-Z"                    "FrequencyBodyAccJerk-StandardDeviation-X"      
[53] "FrequencyBodyAccJerk-StandardDeviation-Y"       "FrequencyBodyAccJerk-StandardDeviation-Z"      
[55] "FrequencyBodyGyro-Mean-X"                       "FrequencyBodyGyro-Mean-Y"                      
[57] "FrequencyBodyGyro-Mean-Z"                       "FrequencyBodyGyro-StandardDeviation-X"         
[59] "FrequencyBodyGyro-StandardDeviation-Y"          "FrequencyBodyGyro-StandardDeviation-Z"         
[61] "FrequencyBodyAccMag-Mean"                       "FrequencyBodyAccMag-StandardDeviation"         
[63] "FrequencyBodyBodyAccJerkMag-Mean"               "FrequencyBodyBodyAccJerkMag-StandardDeviation" 
[65] "FrequencyBodyBodyGyroMag-Mean"                  "FrequencyBodyBodyGyroMag-StandardDeviation"    
[67] "FrequencyBodyBodyGyroJerkMag-Mean"              "FrequencyBodyBodyGyroJerkMag-StandardDeviation"

```
with Gyro = Gyroscope
and Acc = Accelerometer
and Mag = Magnitute
The variables are self explanatory. I did not rename the above three names into the full names as to avoid having very long variable names.

