run_analysis<-function(){
    
  
##1) Merges the training and the test sets to create one data set 
    
    Assuming that the zipped data file "getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")
    is in the working directory unzip it to the working directory
    
   
    Read in the training data from 
    * "./UCI HAR Dataset/train/X_train.txt", 
    * "./UCI HAR Dataset/train/subject_train.txt" and 
    *"./UCI HAR Dataset/train/y_train.txt"
    and columnbine it to one dataframe
    
    Read in the training data from 
    * "./UCI HAR Dataset/test/X_est.txt", 
    * "./UCI HAR Dataset/test/subject_test.txt" and 
    *"./UCI HAR Dataset/test/y_test.txt"
    and columnbine it to one dataframe

    Merge the training and the test data set into one dataframe called data
    Information on whether the observation was in the test or the training
    set it droped, as this partitioning had been random in the first place
    (see README.txt from the data directory)
        
    

##2) Extracts only the measurements on the mean and standard deviation for each measurement.
   
    
    Get the column-numbers that contain the means and standard deviations of the
    33 features listed in features_info.txt using the grepl() function and the file features.txt. 
    (Do not use the columns containing the angle() variables, as the do contain the word mean but do represent     means, they only need means to be calculated.)

    Store those column numbers and the corresponding feature names in a dataframe called
    features.    

    Select the appropriate columns from the dataframe data created in 1). (We need to add 2 to
    the column numbers as we had added two columns for activity and subject in 1).)
    
    

##3) Uses descriptive activity names to name the activities in the data set
     
     Convert the Activity column into a factor variable, naming the levels
     "WALKING","WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING".
    
	

    

##4) Appropriately labels the data set with descriptive variable names.    

    Create a vector cnames for the column names, using "Activity" respectively
    "Subject" for the first two columns, and the names of the features from
    "features.txt", which we had stored in the dataframe features in step 2.

    Pass this vector to the colnames attribute of the dataframe data.
   

##5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

    We make use of the function group_by() to group the data by the Activity and the Subject column. We then
    use the function summarise_each() to calculate the correct averages.  

    
    