run_analysis<-function(){
    
#######################################################################    
#1) Merges the training and the test sets to create one data set 
######################################################################
    
    #Assuming that the zipped data file is in the working directory
    #unzip it to the working directory
    unzip("getdata%2Fprojectfiles%2FUCI HAR Dataset.zip")
   
    ##Read in the training data and columnbind it to one dataframe
    train_features<-read.table("./UCI HAR Dataset/train/X_train.txt")
    train_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
    train_activity<-read.table("./UCI HAR Dataset/train/y_train.txt")
    train<-cbind(train_activity,train_subject,train_features)
    
    ##Read in the test data and columnbind it to one dataframe
    test_features<-read.table("./UCI HAR Dataset/test/X_test.txt")
    test_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
    test_activity<-read.table("./UCI HAR Dataset/test/y_test.txt")
    test<-cbind(test_activity,test_subject,test_features)
    
    ##Merge the training and the test data set
    ##Information on whether the observation was in the test or the training
    ##set it droped, as this partitioning had been random in the first place
    ##(see README.txt)
    data<-rbind(train,test)
    
###############################################################################
##2) Extracts only the measurements on the mean and standard deviation for each
##   measurement.
###############################################################################   
    
    ##Choose the columns that contain the means and standard deviations of the
    ##33 features listed in features_info.txt
    ##Do not use the columns containing the angle() variables, as the do contain
    ##the word mean but do represent means, they only need means to be calculated.
    features<-read.table("./UCI HAR Dataset/features.txt")
    col_mean<-which(grepl("mean()[^F]",features$V2))
    col_std<-which(grepl("std()[^F]",features$V2))
    cols<-sort(c(col_mean,col_std))
    cols2<-cols+2 #because the first columns in data represent activity and subject
    data2<-data[,c(1,2,cols2)]
    
################################################################################
##3) Uses descriptive activity names to name the activities in the data set
################################################################################    
    names<-c("WALKING","WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
    library(dplyr) #needed for mutate
    #Use a factor variable for the activities
    data3<-mutate(data2,V1=as.factor(V1))
    levels(data3$V1)<-names
    
################################################################################
##4) Appropriately labels the data set with descriptive variable names.    
###############################################################################  
    
    #Create a vector cnames for the column names, using "Activity" respectively
    #"Subject" for the first two columns, and the names of the features from
    #features.txt", which we had stored in features$V2 in step 2
    cnames<-c("Activity","Subject",as.character(features$V2[cols]))
    data4<-data3
    colnames(data4)<-cnames
    
###############################################################################
##5)From the data set in step 4, creates a second, independent tidy data set
##  with the average of each variable for each activity and each subject.
##############################################################################
    grouped<-group_by(data4,Activity,Subject)
    result0<-summarise_each(grouped,funs(mean))
    result<-as.data.frame(result0)
    
}