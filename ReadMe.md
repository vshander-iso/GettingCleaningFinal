# Read Me
The files in this repo are for Coursera’s Getting and Cleaning Data course project.
The data was downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> on 11/23/2018 and unzipped to create a subfolder "UCI HAR Dataset" of the working directory on my computer. 
## Files
The repo includes 
* Readme.md – this file
* run_analysis.R – the R script 
* CodeBook.md – explains newly created variables and maps pre-existing variables to the original reference material, see features_info.txt below.
* features_info.txt – the descriptions of the "features", i.e., numeric measurements, provided with the source data. 
* README.txt – the readme from the original data, included for completeness
## Additional comments
The output, created as final.txt was submitted directly to Coursera and not included in the repo, as per instructions. It was created with write.table(final,file="final.txt",row.names = FALSE) and is readable with read.table("final.txt",header=TRUE). It has 180 records – one per each activity-subject combination. 
It is a tidy data set in the sense that the columns included measure different heterogenous aspects of an experiment.  From the database standpoint, the same data can be presented as subject-activity-measure-average (e.g., using gather()), but I do not see time domain measures as sufficiently similar with frequency domain measures. 
The submitted script does not include the preliminary data interrogation. However, such an analysis was performed, confirming that the test and train data are identically structured: all numeric measurements are in the 'X' file, all subject IDs are in the subjects file and the activity codes are in the y-file.  It was additionally confirmed that the number of data fields in the X-file is consistent with the list provided in features.txt and that the activity codes range from 1 to 6, consistent with activity_labels.txt. Normally, I'd add a field indicating whether the data came from test or train, but it was not required for this assignment.
For the purposes of this project I was supposed to extract only "the measurements on the mean and standard deviation for each measurement". Based on features_info.txt, that was interpreted to include all feature descriptions that contain "mean" or "std," even though more narrow interpretations are possible.
The descriptive variable names were derived from feature descriptions, tweaked to create the names that do not require backquotes in R references. 
The activity codes were converted to descriptions per activity_labels.txt using a factor assignment – that was inspired by the standard SAS technique to use custom formats for a quick merge/lookup.
The work was dome in Windows environment,  platform= x86_64-w64-mingw32,  R version 3.5.1 (2018-07-02).          
## Sources:
Lectures, swirl exercises, R-help, web search that permitted me to find summarise_all() function.
Reading <https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment> was very helpful.

