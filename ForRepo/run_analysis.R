
run_analysis <- function(filelocation = "~/Documents/GettingDataCoursera/CourseProject") {

    ## load necessary packages
    library(dplyr)
    library(reshape)
    
    ## set working directory
    ##setwd("~/Documents/GettingDataCoursera/CourseProject")
    setwd(filelocation)
    
    ## download data and unzip it
    download.file(
            "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
            "UCI HAR Dataset.zip")
    unzip("UCI HAR Dataset.zip")
    
    ## set working directory
    ##setwd(paste("~/Documents/GettingDataCoursera/CourseProject","/UCI HAR Dataset", sep = ""))
    setwd(paste(filelocation, "/UCI HAR Dataset", sep = ""))
    
    
    ## read in activity labels and features data and add appropriate names
    activity_labels <- read.table("activity_labels.txt")
    names(activity_labels) <- c("Activity_Code", "Activity")
    features <- read.table("features.txt")

    ## read in test data and labels and put together with variable names from
    ## features file
    test_set <- read.table("test/X_test.txt")
    test_labels <- read.table("test/y_test.txt")
    names(test_labels) = "Activity_Code"
    test_subjects <- read.table("test/subject_test.txt")
    names(test_subjects) <- "Subject_ID"
    names(test_set) <- features$V2
    test_set <- cbind(test_subjects, test_labels, test_set)
    
  
    
    ## read in training data and labels and put together with variable names from
    ## features file
    training_set <- read.table("train/X_train.txt")
    training_labels <- read.table("train/y_train.txt")
    names(training_labels) <- c("Activity_Code")
    training_subjects <- read.table("train/subject_train.txt")
    names(training_subjects) <- "Subject_ID"
    names(training_set) <- features$V2
    training_set <- cbind(training_subjects, training_labels, training_set)

    ## combine the test and the training data
    all_data <- rbind(test_set, training_set)
   
    ## add descriptive activity labels to data
    all_data <- merge(activity_labels, all_data, 
                          by.x = "Activity_Code", by.y = "Activity_Code", all.y = TRUE)
    
    
    ## keep only the variables that are means or standard deviations
    ## and take out activity code
    myvars <- grep("[Mm]ean\\(\\)|[Ss]td\\(\\)", names(all_data))
    my_data <- all_data[,c(3,2,myvars)]
    my_data$Subject_ID <- factor(my_data$Subject_ID)
    
    ## create descriptive variable names
    names(my_data) <- gsub("fBodyBody", "fBody", names(my_data))
    names(my_data) <- gsub("tBodyAcc-", "Accelerometer Body Signal Time Domain ", names(my_data))
    names(my_data) <- gsub("tGravityAcc-", "Accelerometer Gravity Signal Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyAccJerk-", "Accelerometer Body Jerk Signal Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyGyro-", "Gyroscope Body Signal Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyGyroJerk-", "Gyroscope Body Jerk Signal Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyAccMag", "Accelerometer Body Signal Magnitude Time Domain ", names(my_data))
    names(my_data) <- gsub("tGravityAccMag", "Accelerometer Gravity Signal Magnitude Time Domain", names(my_data))
    names(my_data) <- gsub("tBodyAccJerkMag", "Accelerometer Body Jerk Signal Maginitude Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyGyroMag", "Gyroscope Body Signal Magnitude Time Domain ", names(my_data))
    names(my_data) <- gsub("tBodyGyroJerkMag", "Gyroscope Body Jerk Signal Magnitude Time Domain ", names(my_data))
   
    names(my_data) <- gsub("fBodyAcc-", "Accelerometer Body Signal Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyAccJerk", "Accelerometer Body Jerk Signal Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyGyro-", "Gyroscope Body Signal Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyAccMag", "Accelerometer Body Signal Magnitude Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyAccJerkMag", "Accelerometer Body Jerk Signal Magnitude Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyGyroMag", "Gyroscope Body Signal Magnitude Frequency Domain ", names(my_data))
    names(my_data) <- gsub("fBodyGyroJerkMag", "Gyroscope Body Jerk Signal Magnitude Frequency Domain ", names(my_data))
    
    names(my_data) <- gsub("mean\\(\\)", "Mean ", names(my_data))
    names(my_data) <- gsub("std\\(\\)", "Stand Dev ", names(my_data))
    names(my_data) <- gsub("mean\\(\\)", "Mean ", names(my_data))
    names(my_data) <- gsub("-", "", names(my_data))
    names(my_data) <- gsub("X", "X-Axis", names(my_data))
    names(my_data) <- gsub("Y", "Y-Axis", names(my_data))
    names(my_data) <- gsub("Z", "Z-Axis", names(my_data))

    ## Writes first tidy dataset to text file
    write.table(my_data, file = "tidy_data_first.txt")
    
    ## Creates a second, independent tidy data set with the average of 
    ## each variable for each activity and each subject.
    
    my_data_melted <- melt(my_data, id = c("Subject_ID", "Activity"))
    my_data_casted <- cast(my_data_melted, Subject_ID + Activity ~ variable, mean)
    
    ## Write file with second tidy dataset
    setwd(filelocation)
    write.table(my_data_casted, file = "tidy_data.txt", row.names = FALSE)
    my_data_casted
}