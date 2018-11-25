## Data is downloaded and unzipped into a subfolder of the working directory 

topPath<-"./UCI HAR Dataset"
testPath<-"./UCI HAR Dataset/test"
trainPath<-"./UCI HAR Dataset/train"

#reference files in topPath, each has two columns V1 and V2, V1 is a record number
activity_labels<-read.table(paste0(topPath,"/activity_labels.txt")) # 6 records
features<-read.table(paste0(topPath,"/features.txt")) #561 records 2 vars


## exploration, e.g., str() shows that each of the  each of the  _train files has 7352 obs, 
## each of _test files has 2947 obs, and their structres match
##  subject has one integer variable ranging from 1 to 30;
##  X has 561 numeric variables, consistent with 'features'
## y has one numeric variable ranging 1 to 6, consistent with activity_labels  

subject_train<-read.table(paste0(trainPath,"/subject_train.txt"))
X_train<-read.table(paste0(trainPath,"/X_train.txt"))
Y_train<-read.table(paste0(trainPath,"/y_train.txt"))

subject_test<-read.table(paste0(testPath,"/subject_test.txt")) 
X_test<-read.table(paste0(testPath,"/X_test.txt"))
Y_test<-read.table(paste0(testPath,"/y_test.txt"))




## concatenate train and test parts separately for X, Y, and subjects 
X_all<-rbind(X_train,X_test)
Y_all<-rbind(Y_train,Y_test)
subject_all<-rbind(subject_train,subject_test)

### build a dataframe starting with subjects, 
### then add Y, converting it to a factor, with meanings given by activity_labels 
names(subject_all)[1]<-"subject"
data_all<-subject_all
data_all$activity <-factor(Y_all$V1, levels=activity_labels$V1,labels=activity_labels$V2)

### two tasks with the columns from X - (1) we only need mean and std
features_mean_std<-grep(("mean|std"),features$V2,ignore.case=TRUE)
mean_std<-X_all[,features_mean_std]

###  (2) It'd be nice to use the 'features' as descriptive field names, but the 'features' 
###  contain special characters, so if they are turned into names, we will need backquotes.
###  As a compromise, I create key2features - the first column contains original names,
#### key2features$cleaned replaces parenthesis and commas with periods
####      repeated periods, e.g., from (), are replaced with single periods
####      periods at the end are removed
####     '-' is replaced with underscore '_'. Even though '_' is not recommended, it makes
####     it easier to think back to the original names.
key_features<-grep(("mean|std"),features$V2,ignore.case=TRUE,value=TRUE)
key2features<-data.frame(key_features,key_features,stringsAsFactors = FALSE)
names(key2features)<-c("original","cleaned")
key2features$cleaned<-gsub("[(),]",".",key2features$cleaned)
key2features$cleaned<-gsub("[.]{2,}",".",key2features$cleaned)
key2features$cleaned<-gsub("([.]-)|-","_",key2features$cleaned)
key2features$cleaned<-gsub("[.]$","",key2features$cleaned)
names(mean_std)<-key2features$cleaned
data_all<-cbind(data_all,mean_std)
#write.table(key2features,file="key2features",row.names = FALSE)
library(dplyr)
final<-data_all %>% group_by(activity,subject) %>% summarise_all(mean)
write.table(final,file="final.txt",row.names = FALSE)
test<-read.table("final.txt",header=TRUE)
