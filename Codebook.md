##Introduction 
We look at data from the embedded acceleromater and gyroscope of a Smartphone, capturing data on 3-axial linear
acceleration and 3-axial angular velocity. This data is partitioned into six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by 30 volunteers.


##Introduction and references
We are using the following dataset:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
and reference the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Experimental Design and Background
For the experimental Design we quote "README.txt" provided with the dataset:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz." 

The data was used to estimate the following features ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions) for:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Mean and Standard deviation was calculated for each of those features, resulting in 66 variables. Each of these
has been normalized and is bounded within [-1,1]


Given the 30 subjects (volunteers) who participated in the experiment and the 6 activities, we calculated  the average of each variable for each activity and each subject.

##Processed data: (180 observations of 68 variables)

1 $ Activity                   		       : Factor w/ 6 levels 
							WALKING
							WALKING_UPSTAIRS
							WALKING_DOWNSTAIRS
							SITTING
							STANDING
							LAYING
2 $ Subject(number of subject(volunteer)       : int
				 
  
3 $ tBodyAcc-mean()-X (average for each activity and subject)    : num 
4 $ tBodyAcc-mean()-Y (average for each activity and subject)    : num
5 $ tBodyAcc-mean()-Z (average for each activity and subject)    : num
6 $ tBodyAcc-std()-X  (average for each activity and subject)    : num
7 $ tBodyAcc-std()-Y  (average for each activity and subject)    : num
8 $ tBodyAcc-std()-Z  (average for each activity and subject)    : num
9 $ tGravityAcc-mean()-X        (average for each activity and subject)    : num
10 $ tGravityAcc-mean()-Y       (average for each activity and subject)    : num
11 $ tGravityAcc-mean()-Z       (average for each activity and subject)    : num
12 $ tGravityAcc-std()-X        (average for each activity and subject)    : num
13 $ tGravityAcc-std()-Y        (average for each activity and subject)    : num
14 $ tGravityAcc-std()-Z        (average for each activity and subject)    : num
15 $ tBodyAccJerk-mean()-X      (average for each activity and subject)    : num
16 $ tBodyAccJerk-mean()-Y      (average for each activity and subject)    : num
17 $ tBodyAccJerk-mean()-Z      (average for each activity and subject)    : num
18 $ tBodyAccJerk-std()-X       (average for each activity and subject)    : num
19 $ tBodyAccJerk-std()-Y       (average for each activity and subject)    : num
20 $ tBodyAccJerk-std()-Z       (average for each activity and subject)    : num
21 $ tBodyGyro-mean()-X         (average for each activity and subject)    : num
22 $ tBodyGyro-mean()-Y         (average for each activity and subject)    : num
23 $ tBodyGyro-mean()-Z         (average for each activity and subject)    : num
24 $ tBodyGyro-std()-X          (average for each activity and subject)    : num
25 $ tBodyGyro-std()-Y          (average for each activity and subject)    : num
26 $ tBodyGyro-std()-Z          (average for each activity and subject)    : num
27 $ tBodyGyroJerk-mean()-X     (average for each activity and subject)    : num
28 $ tBodyGyroJerk-mean()-Y     (average for each activity and subject)    : num
29 $ tBodyGyroJerk-mean()-Z     (average for each activity and subject)    : num
30 $ tBodyGyroJerk-std()-X      (average for each activity and subject)    : num
31 $ tBodyGyroJerk-std()-Y      (average for each activity and subject)    : num
32 $ tBodyGyroJerk-std()-Z      (average for each activity and subject)    : num
33 $ tBodyAccMag-mean()         (average for each activity and subject)    : num
34 $ tBodyAccMag-std()          (average for each activity and subject)    : num
35 $ tGravityAccMag-mean()      (average for each activity and subject)    : num
36 $ tGravityAccMag-std()       (average for each activity and subject)    : num
37 $ tBodyAccJerkMag-mean()     (average for each activity and subject)    : num
38 $ tBodyAccJerkMag-std()      (average for each activity and subject)    : num
39 $ tBodyGyroMag-mean()        (average for each activity and subject)    : num
40 $ tBodyGyroMag-std()         (average for each activity and subject)    : num
41 $ tBodyGyroJerkMag-mean()    (average for each activity and subject)    : num
42 $ tBodyGyroJerkMag-std()     (average for each activity and subject)    : num
43 $ fBodyAcc-mean()-X          (average for each activity and subject)    : num
44 $ fBodyAcc-mean()-Y          (average for each activity and subject)    : num
45 $ fBodyAcc-mean()-Z          (average for each activity and subject)    : num
46 $ fBodyAcc-std()-X           (average for each activity and subject)    : num
47 $ fBodyAcc-std()-Y           (average for each activity and subject)    : num
48 $ fBodyAcc-std()-Z           (average for each activity and subject)    : num
49 $ fBodyAccJerk-mean()-X      (average for each activity and subject)    : num
50 $ fBodyAccJerk-mean()-Y      (average for each activity and subject)    : num
51 $ fBodyAccJerk-mean()-Z      (average for each activity and subject)    : num
52 $ fBodyAccJerk-std()-X       (average for each activity and subject)    : num
53 $ fBodyAccJerk-std()-Y       (average for each activity and subject)    : num
54 $ fBodyAccJerk-std()-Z       (average for each activity and subject)    : num
55 $ fBodyGyro-mean()-X         (average for each activity and subject)    : num
56 $ fBodyGyro-mean()-Y         (average for each activity and subject)    : num
57 $ fBodyGyro-mean()-Z         (average for each activity and subject)    : num
58 $ fBodyGyro-std()-X          (average for each activity and subject)    : num
59 $ fBodyGyro-std()-Y          (average for each activity and subject)    : num
60 $ fBodyGyro-std()-Z          (average for each activity and subject)    : num
61 $ fBodyAccMag-mean()         (average for each activity and subject)    : num
62 $ fBodyAccMag-std()          (average for each activity and subject)    : num
63 $ fBodyBodyAccJerkMag-mean() (average for each activity and subject)    : num
64 $ fBodyBodyAccJerkMag-std()  (average for each activity and subject)    : num
65 $ fBodyBodyGyroMag-mean()    (average for each activity and subject)    : num
66 $ fBodyBodyGyroMag-std()     (average for each activity and subject)    : num
67 $ fBodyBodyGyroJerkMag-mean()(average for each activity and subject)    : num
68 $ fBodyBodyGyroJerkMag-std() (average for each activity and subject)    : num

