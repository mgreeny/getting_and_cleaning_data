run_analysis <- function() {
  #load the test data
  dfxtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
  dfytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  testdfsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  #bind the data into a single data frame
  testdf <- cbind(testdfsubj,dfytest,dfxtest)
  
  #load the train data
  dfxtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
  dfytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  traindfsubj <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  #bind the data into a single data frame
  traindf <- cbind(traindfsubj,dfytrain,dfxtrain)
  
  #append testdf to traindf
  dfunion <- rbind(testdf,traindf)
  
  #load features names
  dffeatures <- read.table("./UCI HAR Dataset/features.txt")
  
  #assign features names
  names(dfunion) <- c("subject","activity",as.character(dffeatures[[2]]))
    
  #extract the mean and std columns
  dfmean <- dfunion[ , grepl("mean()",names(dfunion))]
  dfstd <-  dfunion[ , grepl("std()",names(dfunion))]
  dffinal <- cbind(dfunion[,c(1:2)],dfmean,dfstd)
  
  #load activity labels
  dfactlabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  
  
  #replace the activity codes with the corresponding activity names
  dffinal$activity <- as.character(dfactlabels[match(dffinal$activity,dfactlabels$V1),2])
  #dffinal$activity <- as.factor(dffinal$activity)
  
  return(dffinal)
}
