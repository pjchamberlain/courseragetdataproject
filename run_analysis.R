#######################################################
##Coursera - Getting and Cleaning Data : Course Project
#######################################################
## Summary:
##
## run_analysis.R  does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names. 
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# getdata
x_test <-read.table("test/X_test.txt")
x_train <-read.table("train/X_train.txt")

#get activity ID numbers 
y_test <-read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")

#get subject ID numbers
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")

#get variable abd feature names
activity_labels <- read.table("activity_labels.txt")
features_labels <- read.table("features.txt")

#get variables of interest : 
## assuming a pattern match for those with either 'std' or 'mean' in the name
features_of_interest <- features_labels[grep("-std|-mean", features_labels[,2], perl = TRUE),]

##clean up variable names
##remove brackets
features_of_interest$V2 <- gsub("\\(\\)","",features_of_interest[,2])
##remove dashes
features_of_interest$V2 <- gsub("-","",features_of_interest[,2])
## make lower case
features_of_interest$V2 <- tolower (features_of_interest[,2])

#get data columns of interest, using features of interest
x_test_of_interest <-x_test[,features_of_interest[,1]]
x_train_of_interest <-x_train[,features_of_interest[,1]]

#add variable names to the data
names(x_test_of_interest) <- features_of_interest[,2]
names(x_train_of_interest) <- features_of_interest[,2]


##rename the columns
names(y_train) <- c("activityid")
names(y_test) <- c("activityid")
names(subject_train) <- c("subjectid")
names(subject_test) <- c("subjectid")

##join activities with data
tidy_train1 <- cbind(y_train,x_train_of_interest)
tidy_test1 <- cbind(y_test,x_test_of_interest)

##join subject Ids with data
tidy_train2 <- cbind(subject_train,tidy_train1)
tidy_test2 <- cbind(subject_test,tidy_test1)

##put train and test data sets into one dataframe
merged_tidy_data <- rbind(tidy_train2, tidy_test2)

##create a new dataframe of means for each variable by activity id and subject id
means <- aggregate(x=merged_tidy_data[3:81], by=list(merged_tidy_data$activityid,merged_tidy_data$subjectid), FUN=mean )

##rename auto generated Group columns
names(means)[1] <- "activityid"
names(means)[2] <- "subjectid"

##add activity names 
means <- cbind(activity_labels[means$activityid,2],means)
names(means)[1] <- "activitynames"

##write the result to csv
write.csv(means, file = "means.txt")
