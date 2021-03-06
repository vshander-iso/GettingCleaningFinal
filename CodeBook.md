# Code Book for the Getting and Cleaning Data final assignment
The dataset saved as final.txt and readable with read.table("final.txt",header=TRUE) contains 88 variables: "activity",  "subject" and 86 numeric fields listed below.

It was created with run_analysis.R R-script as an aggregation (by "activity" and "subject") of the data derived from the files in "UCI HAR Dataset" folder provided by Coursera for this assignment.  See also ReadMe.md. 
## "Activity" 
It takes six values: 
1.LAYING  
2.SITTING 
3.STANDING  
4.WALKING  
5.WALKING_DOWNSTAIRS  
6.WALKING_UPSTAIRS  

It originates from numeric codes provided as 'train/y_train.txt' and 'test/y_test.txt,' converted to factors using the key provided as 'activity_labels.txt.'

## "Subject" 
It contains test subject ID, ranging 1 to 30. It originates from subject IDs provided in 'train/subject_train.txt' and 'test/subject_test.txt 

## The numeric fields 
These fields contain averages (means) of certain data fields provided within 'train/X_train.txt' and 'test/X_test.txt', with their descriptors given in 'features_info.txt'. From 561 original fields, the fields with "std" or "mean" in the descriptor were selected, resulting in 86 fields. The names given to the resulting fields in final.txt are derived from the descriptors to avoid using special characters badly suitable for R names. The list below shows the names and the original descriptors. However, for meaning of the original short descriptors, the reader is referred to 'features_info.txt', also included for completeness.

original description | field name
------------------|--------------
tBodyAcc-mean()-X | tBodyAcc_mean_X
tBodyAcc-mean()-Y | tBodyAcc_mean_Y
tBodyAcc-mean()-Z | tBodyAcc_mean_Z
tBodyAcc-std()-X | tBodyAcc_std_X
tBodyAcc-std()-Y | tBodyAcc_std_Y
tBodyAcc-std()-Z | tBodyAcc_std_Z
tGravityAcc-mean()-X | tGravityAcc_mean_X
tGravityAcc-mean()-Y | tGravityAcc_mean_Y
tGravityAcc-mean()-Z | tGravityAcc_mean_Z
tGravityAcc-std()-X | tGravityAcc_std_X
tGravityAcc-std()-Y | tGravityAcc_std_Y
tGravityAcc-std()-Z | tGravityAcc_std_Z
tBodyAccJerk-mean()-X | tBodyAccJerk_mean_X
tBodyAccJerk-mean()-Y | tBodyAccJerk_mean_Y
tBodyAccJerk-mean()-Z | tBodyAccJerk_mean_Z
tBodyAccJerk-std()-X | tBodyAccJerk_std_X
tBodyAccJerk-std()-Y | tBodyAccJerk_std_Y
tBodyAccJerk-std()-Z | tBodyAccJerk_std_Z
tBodyGyro-mean()-X | tBodyGyro_mean_X
tBodyGyro-mean()-Y | tBodyGyro_mean_Y
tBodyGyro-mean()-Z | tBodyGyro_mean_Z
tBodyGyro-std()-X | tBodyGyro_std_X
tBodyGyro-std()-Y | tBodyGyro_std_Y
tBodyGyro-std()-Z | tBodyGyro_std_Z
tBodyGyroJerk-mean()-X | tBodyGyroJerk_mean_X
tBodyGyroJerk-mean()-Y | tBodyGyroJerk_mean_Y
tBodyGyroJerk-mean()-Z | tBodyGyroJerk_mean_Z
tBodyGyroJerk-std()-X | tBodyGyroJerk_std_X
tBodyGyroJerk-std()-Y | tBodyGyroJerk_std_Y
tBodyGyroJerk-std()-Z | tBodyGyroJerk_std_Z
tBodyAccMag-mean() | tBodyAccMag_mean
tBodyAccMag-std() | tBodyAccMag_std
tGravityAccMag-mean() | tGravityAccMag_mean
tGravityAccMag-std() | tGravityAccMag_std
tBodyAccJerkMag-mean() | tBodyAccJerkMag_mean
tBodyAccJerkMag-std() | tBodyAccJerkMag_std
tBodyGyroMag-mean() | tBodyGyroMag_mean
tBodyGyroMag-std() | tBodyGyroMag_std
tBodyGyroJerkMag-mean() | tBodyGyroJerkMag_mean
tBodyGyroJerkMag-std() | tBodyGyroJerkMag_std
fBodyAcc-mean()-X | fBodyAcc_mean_X
fBodyAcc-mean()-Y | fBodyAcc_mean_Y
fBodyAcc-mean()-Z | fBodyAcc_mean_Z
fBodyAcc-std()-X | fBodyAcc_std_X
fBodyAcc-std()-Y | fBodyAcc_std_Y
fBodyAcc-std()-Z | fBodyAcc_std_Z
fBodyAcc-meanFreq()-X | fBodyAcc_meanFreq_X
fBodyAcc-meanFreq()-Y | fBodyAcc_meanFreq_Y
fBodyAcc-meanFreq()-Z | fBodyAcc_meanFreq_Z
fBodyAccJerk-mean()-X | fBodyAccJerk_mean_X
fBodyAccJerk-mean()-Y | fBodyAccJerk_mean_Y
fBodyAccJerk-mean()-Z | fBodyAccJerk_mean_Z
fBodyAccJerk-std()-X | fBodyAccJerk_std_X
fBodyAccJerk-std()-Y | fBodyAccJerk_std_Y
fBodyAccJerk-std()-Z | fBodyAccJerk_std_Z
fBodyAccJerk-meanFreq()-X | fBodyAccJerk_meanFreq_X
fBodyAccJerk-meanFreq()-Y | fBodyAccJerk_meanFreq_Y
fBodyAccJerk-meanFreq()-Z | fBodyAccJerk_meanFreq_Z
fBodyGyro-mean()-X | fBodyGyro_mean_X
fBodyGyro-mean()-Y | fBodyGyro_mean_Y
fBodyGyro-mean()-Z | fBodyGyro_mean_Z
fBodyGyro-std()-X | fBodyGyro_std_X
fBodyGyro-std()-Y | fBodyGyro_std_Y
fBodyGyro-std()-Z | fBodyGyro_std_Z
fBodyGyro-meanFreq()-X | fBodyGyro_meanFreq_X
fBodyGyro-meanFreq()-Y | fBodyGyro_meanFreq_Y
fBodyGyro-meanFreq()-Z | fBodyGyro_meanFreq_Z
fBodyAccMag-mean() | fBodyAccMag_mean
fBodyAccMag-std() | fBodyAccMag_std
fBodyAccMag-meanFreq() | fBodyAccMag_meanFreq
fBodyBodyAccJerkMag-mean() | fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag-std() | fBodyBodyAccJerkMag_std
fBodyBodyAccJerkMag-meanFreq() | fBodyBodyAccJerkMag_meanFreq
fBodyBodyGyroMag-mean() | fBodyBodyGyroMag_mean
fBodyBodyGyroMag-std() | fBodyBodyGyroMag_std
fBodyBodyGyroMag-meanFreq() | fBodyBodyGyroMag_meanFreq
fBodyBodyGyroJerkMag-mean() | fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag-std() | fBodyBodyGyroJerkMag_std
fBodyBodyGyroJerkMag-meanFreq() | fBodyBodyGyroJerkMag_meanFreq
angle(tBodyAccMean,gravity) | angle.tBodyAccMean.gravity
angle(tBodyAccJerkMean),gravityMean) | angle.tBodyAccJerkMean.gravityMean
angle(tBodyGyroMean,gravityMean) | angle.tBodyGyroMean.gravityMean
angle(tBodyGyroJerkMean,gravityMean) | angle.tBodyGyroJerkMean.gravityMean
angle(X,gravityMean) | angle.X.gravityMean
angle(Y,gravityMean) | angle.Y.gravityMean
angle(Z,gravityMean) | angle.Z.gravityMean
