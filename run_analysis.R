# Cleaning the UCI HAR Dataset for Geting and Cleaning Data Project
## Author: WeiHsi Hu

p <- function(...) {
        cat(“[Running run_analysis.R]", ..., "\n")
}

# Set-Up

## Load dplyr and tidyr

p("Loading packages dplyr and tidyr.")

library(dplyr)
library(tidyr)

## Reading training and test files into R.

p("Reading files into R")

subject_train <- read.table("~/Documents/R/UCI HAR Dataset/train/subject_train.txt", 
                            quote="\"", stringsAsFactors=FALSE) 
y_train <- read.table("~/Documents/R/UCI HAR Dataset/train/y_train.txt",
                      quote="\"", colClasses = "factor")
x_train <- read.table("~/Documents/R/UCI HAR Dataset/train/x_train.txt",
                      quote="\"", stringsAsFactors=FALSE)

subject_test <- read.table("~/Documents/R/UCI HAR Dataset/test/subject_test.txt", 
                            quote="\"", stringsAsFactors=FALSE) 
y_test <- read.table("~/Documents/R/UCI HAR Dataset/test/y_test.txt",
                      quote="\"", colClasses = "factor")
x_test <- read.table("~/Documents/R/UCI HAR Dataset/test/x_test.txt",
                      quote="\"", stringsAsFactors=FALSE)

## Readiong features file into R (variable labels for data sets)

features <- read.table("~/Documents/R//UCI HAR Dataset/features.txt",
                     quote="\"", stringsAsFactors=FALSE)

## Reading activity label file into R.

ActivityLabel <- read.table("~/Documents/R/UCI HAR Dataset/activity_labels.txt",
                       quote="\"", colClasses="character")

# 1. Merging the training and test sets to create one data set.

p("merging training and test datasets")

## Merging Training elements together to become Training dataset.

TrainSet <- cbind(subject_train, y_train, x_train)

## Merging Test elements together to become Test dataset.

TestSet <- cbind(subject_test, y_test, x_test)

## Merging Training and Text data together.

DataSet <- rbind(TrainSet, TestSet)

# 4.Appropriately labels the data set with descriptive variable names. 

## Labeling dataset variables.

colnames(DataSet) <- c("Subject", "Activity", features$V2)

#. 2. Extracts only the measurements on the mean and standard deviation for
#     each measurement.

p("Extracting mean and standard deviation variables")

## Extracting from DataSet only the measurement on the mean and standard 
## deviation for each measurement.

DataSet2 <- DataSet %>%
        select(Subject, Activity, contains("mean"), contains("std"))

# 3. Uses descriptive activity names to name the activities in the data set

p("Assigning descriptive activity names to the Activity variable.")

## Changing the activity code into descriptive labels

DataSet2$Activity <- factor(DataSet2$Activity, levels = ActivityLabel$V1, 
                            labels = ActivityLabel$V2)

# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

p("Calculating average of each variable for each activity and each subject.")

DataSetAve <- DataSet2 %>%
        group_by(Subject, Activity) %>%
        summarise_each(funs(mean), 3:88)

## write file to disc.
file.p <- getwd()
p("Saving the result in your current R working directory:", file.p)

write.table(DataSetAve, "~/Documents/R/DataSetAve.txt",
            row.name = FALSE)
