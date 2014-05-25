#CodeBook
*The source data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone. 
*A full description is available at the site where the data was obtained: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]
*Data for the project has been downloaded from the following link
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]
*See the README.txt file in the zip file for more details of the files.

##Processing summary
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. These fields were selected by pattern matching on the words 'mean' and 'std'
3. Adds descriptive activity names to name the activities in the data set
4. Standardises the variable names according to the style guide for this course: all lower case with all punctuation characters removed 
5. Creates a second, independent tidy data set with the mean for each variable by activity and by subject. 

###variables in the output file means.csv
The first 3 variables identify the data by activity and subject
* "activityname"         - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* "activityid"           - activity id numbers 1 - 6    
* "subjectid"            - subject id numbers
 
The following variables hold the means for each measure by subject and activity 
(across the merged test and train data sets)
 
* "tbodyaccmeanx"
* "tbodyaccmeany"
* "tbodyaccmeanz"               
* "tbodyaccstdx"
* "tbodyaccstdy"
* "tbodyaccstdz"
* "tgravityaccmeanx"
* "tgravityaccmeany"
* "tgravityaccmeanz"
* "tgravityaccstdx"
* "tgravityaccstdy"
* "tgravityaccstdz"             
* "tbodyaccjerkmeanx"
* "tbodyaccjerkmeany"
* "tbodyaccjerkmeanz"           
* "tbodyaccjerkstdx"
* "tbodyaccjerkstdy"
* "tbodyaccjerkstdz"            
* "tbodygyromeanx"
* "tbodygyromeany"
* "tbodygyromeanz"
* "tbodygyrostdx"
* "tbodygyrostdy"
* "tbodygyrostdz"               
* "tbodygyrojerkmeanx"
* "tbodygyrojerkmeany"
* "tbodygyrojerkmeanz"          
* "tbodygyrojerkstdx"
* "tbodygyrojerkstdy"
* "tbodygyrojerkstdz"           
* "tbodyaccmagmean"
* "tbodyaccmagstd"
* "tgravityaccmagmean"          
* "tgravityaccmagstd"
* "tbodyaccjerkmagmean"
* "tbodyaccjerkmagstd"          
* "tbodygyromagmean"
* "tbodygyromagstd"
* "tbodygyrojerkmagmean"        
* "tbodygyrojerkmagstd"
* "fbodyaccmeanx"
* "fbodyaccmeany"               
* "fbodyaccmeanz"
* "fbodyaccstdx"
* "fbodyaccstdy"                
* "fbodyaccstdz"
* "fbodyaccmeanfreqx"
* "fbodyaccmeanfreqy"           
* "fbodyaccmeanfreqz"
* "fbodyaccjerkmeanx"
* "fbodyaccjerkmeany"           
* "fbodyaccjerkmeanz"
* "fbodyaccjerkstdx"
* "fbodyaccjerkstdy"            
* "fbodyaccjerkstdz"
* "fbodyaccjerkmeanfreqx"
* "fbodyaccjerkmeanfreqy"       
* "fbodyaccjerkmeanfreqz"
* "fbodygyromeanx"
* "fbodygyromeany"              
* "fbodygyromeanz"
* "fbodygyrostdx"
* "fbodygyrostdy"               
* "fbodygyrostdz"
* "fbodygyromeanfreqx"
* "fbodygyromeanfreqy"          
* "fbodygyromeanfreqz"
* "fbodyaccmagmean"
* "fbodyaccmagstd"              
* "fbodyaccmagmeanfreq"
* "fbodybodyaccjerkmagmean"
* "fbodybodyaccjerkmagstd"      
* "fbodybodyaccjerkmagmeanfreq"
* "fbodybodygyromagmean"
* "fbodybodygyromagstd"         
* "fbodybodygyromagmeanfreq"
* "fbodybodygyrojerkmagmean"
* "fbodybodygyrojerkmagstd"     
* "fbodybodygyrojerkmagmeanfreq"
