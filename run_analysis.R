run_analysis <- function() {
  #load the test data
  dfxtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
  dfytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  testdfsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  #bind the data into a single data frame
  testdf <- cbind(testdfsubj,dfytest,dfxtest)
  
  #load the train data
  dfxtrain <- read.table("./UCI HAR Dataset/test/X_test.txt")
  dfytrain <- read.table("./UCI HAR Dataset/test/y_test.txt")
  traindfsubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  #bind the data into a single data frame
  traindf <- cbind(traindfsubj,dfytrain,dfxtrain)
  
  #load features names
  dffeatures <- read.table("./UCI HAR Dataset/features.txt")
  
  #load activity labels
  dfactlabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  
  names(df) <- as.character(dffeatures[[2]])
  
}