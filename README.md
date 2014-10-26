GETTING AND CLEANING DATA
RUN ANALYSIS INSTRUCTIONS

The script must be sourced in the R working directory.

The related data set "UCI HAR Dataset" (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) shall be unzipped in the working directory with the same folder structure as defined in the zip archive.

The script loads into R the "test" data sets components (subject, activity and the corresponding data recorded by the sensors) and binds them into a single data frame.
The same operations are executed against the "train" data set.

The two resulting data frames are then row binded into a single data frame.

The columns of the resulting data frame are then named using the data contained into the "features.txt" file.

The data frame is then processed in order to keep only the mean() and std() values.

The activity codes are then replaced with their corresponding names.

The aggregate function is then used to calculate the average of each variable by activity and subject.

The tidied up data set is finalized by renaming the columns returned by the aggregate function.
