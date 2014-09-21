# Code Book

# ID variables

*		Subject	:	column	1: Subject ID
*		Activity	:	column	2: Activities corresponding to the training labels taken by each subject

# Mean and Standard Deviation Features (variables) of 
# the Human Activity Recognition Using Smartphones Dataset 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The DataSetAve variables extracts the mean and standard deviation measurement variables from the original dataset, and then
the mean of each of the activity and subject was calcualted to create this dataset.

*		tBodyAcc-mean()-X	:	column	3
*		tBodyAcc-mean()-Y	:	column	4
*		tBodyAcc-mean()-Z	:	column	5
*		tGravityAcc-mean()-X	:	column	6
*		tGravityAcc-mean()-Y	:	column	7
*		tGravityAcc-mean()-Z	:	column	8
*		tBodyAccJerk-mean()-X	:	column	9
*		tBodyAccJerk-mean()-Y	:	column	10
*		tBodyAccJerk-mean()-Z	:	column	11
*		tBodyGyro-mean()-X	:	column	12
*		tBodyGyro-mean()-Y	:	column	13
*		tBodyGyro-mean()-Z	:	column	14
*		tBodyGyroJerk-mean()-X	:	column	15
*		tBodyGyroJerk-mean()-Y	:	column	16
*		tBodyGyroJerk-mean()-Z	:	column	17
*		tBodyAccMag-mean()	:	column	18
*		tGravityAccMag-mean()	:	column	19
*		tBodyAccJerkMag-mean()	:	column	20
*		tBodyGyroMag-mean()	:	column	21
*		tBodyGyroJerkMag-mean()	:	column	22
*		fBodyAcc-mean()-X	:	column	23
*		fBodyAcc-mean()-Y	:	column	24
*		fBodyAcc-mean()-Z	:	column	25
*		fBodyAcc-meanFreq()-X	:	column	26
*		fBodyAcc-meanFreq()-Y	:	column	27
*		fBodyAcc-meanFreq()-Z	:	column	28
*		fBodyAccJerk-mean()-X	:	column	29
*		fBodyAccJerk-mean()-Y	:	column	30
*		fBodyAccJerk-mean()-Z*	:	column	31
*		fBodyAccJerk-meanFreq()-X	:	column	32
*		fBodyAccJerk-meanFreq()-Y	:	column	33
*		fBodyAccJerk-meanFreq()-Z	:	column	34
*		fBodyGyro-mean()-X	:	column	35
*		fBodyGyro-mean()-Y	:	column	36
*		fBodyGyro-mean()-Z	:	column	37
*		fBodyGyro-meanFreq()-X	:	column	38
*		fBodyGyro-meanFreq()-Y	:	column	39
*		fBodyGyro-meanFreq()-Z	:	column	40
*		fBodyAccMag-mean()	:	column	41
*		fBodyAccMag-meanFreq()	:	column	42
*		fBodyBodyAccJerkMag-mean()	:	column	43
*		fBodyBodyAccJerkMag-meanFreq()	:	column	44
*		fBodyBodyGyroMag-mean()	:	column	45
*		fBodyBodyGyroMag-meanFreq()	:	column	46
*		fBodyBodyGyroJerkMag-mean()	:	column	47
*		fBodyBodyGyroJerkMag-meanFreq()	:	column	48
*		angle(tBodyAccMean,gravity)	:	column	49
*		angle(tBodyAccJerkMean),gravityMean)	:	column	50
*		angle(tBodyGyroMean,gravityMean)	:	column	51
*		angle(tBodyGyroJerkMean,gravityMean)	:	column	52
*		angle(X,gravityMean)	:	column	53
*		angle(Y,gravityMean)	:	column	54
*		angle(Z,gravityMean)	:	column	55
*		tBodyAcc-std()-X	:	column	56
*		tBodyAcc-std()-Y	:	column	57
*		tBodyAcc-std()-Z	:	column	58
*		tGravityAcc-std()-X	:	column	59
*		tGravityAcc-std()-Y	:	column	60
*		tGravityAcc-std()-Z	:	column	61
*		tBodyAccJerk-std()-X	:	column	62
*		tBodyAccJerk-std()-Y	:	column	63
*		tBodyAccJerk-std()-Z	:	column	64
*		tBodyGyro-std()-X	:	column	65
*		tBodyGyro-std()-Y	:	column	66
*		tBodyGyro-std()-Z	:	column	67
*		tBodyGyroJerk-std()-X	:	column	68
*		tBodyGyroJerk-std()-Y	:	column	69
*		tBodyGyroJerk-std()-Z	:	column	70
*		tBodyAccMag-std()	:	column	71
*		tGravityAccMag-std()	:	column	72
*		tBodyAccJerkMag-std()	:	column	73
*		tBodyGyroMag-std()	:	column	74
*		tBodyGyroJerkMag-std()	:	column	75
*		fBodyAcc-std()-X	:	column	76
*		fBodyAcc-std()-Y	:	column	77
*		fBodyAcc-std()-Z	:	column	78
*		fBodyAccJerk-std()-X	:	column	79
*		fBodyAccJerk-std()-Y	:	column	80
*		fBodyAccJerk-std()-Z	:	column	81
*		fBodyGyro-std()-X	:	column	82
*		fBodyGyro-std()-Y	:	column	83
*		fBodyGyro-std()-Z	:	column	84
*		fBodyAccMag-std()	:	column	85
*		fBodyBodyAccJerkMag-std()	:	column	86
*		fBodyBodyGyroMag-std()	:	column	87
*		fBodyBodyGyroJerkMag-std()	:	column	88

# Activity Labels

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

