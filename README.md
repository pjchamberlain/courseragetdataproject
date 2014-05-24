
#Coursera - Getting and Cleaning Data : Course Project

##Summary:

run_analysis.R  does the following.
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##Assumptions
*The data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

*Data for the project has been downloaded from the following link
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] 

*Data files have been unzipped with sub directories. See README.txt in the top level of the unzipped directory for a list of files and contents.

*The R working directory has been set to the top level directory eg ~/UCI_HAR_Dataset

##Output
*run_analysis.R creates a csv file mamed means.txt in the R working directory


