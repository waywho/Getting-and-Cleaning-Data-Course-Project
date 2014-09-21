Getting-and-Cleaning-Data-Course-Project
========================================

# run_analysis.R

This script works with the dataset of UCI HAR Dataset.
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This script is written to do the following:

1. Merges the training and the test sets to create one data set.
2. Labels the data set with descriptive variable names. 
3. Extracts the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Running the script

Before running the script, please download the dataset, unzip and save the unzipped folder to “~/Documents/R/

While the script is running, you should see:

[Running run_analysis.R] Loading packages dplyr and tidyr. 
[Running run_analysis.R] Reading files into R 
[Running run_analysis.R] merging training and test datasets 
[Running run_analysis.R] Extracting mean and standard deviation variables 
[Running run_analysis.R] Assigning descriptive activity names to the Activity variable. 
[Running run_analysis.R] Calculating average of each variable for each activity and each subject. 
[Running run_analysis.R] Saving the result in your current R working directory:…

## NOTE: This script will save the cleaned dataset to your working directory.

# Process

1. The script will first read all the data into R.
2. Then the script will merge all the training and test datasets together.
3. Then it will extract variables that contains “mean” and “std” in the column names.
4. Then it will assign the labels to the levels of the Activity variable.
5. Then it will calculate the mean of all the variables by subject and activity
6. Lastly, it will save the file into your working directory.

# Cleaned Data

The cleaned data contains the mean measurements of each subjects by each activity taken. See CodeBook.md for more information.


# Notes
This script uses dplyr and tidyr. If you don’t have either packages, you should install them before running the script.
