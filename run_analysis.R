# Peer-graded Assignment: Getting and Cleaning Data Course Project
# Name: Byungman Choi

setwd("./W4Assignment/UCI HAR Dataset/")
trainData <- read.table("./train/X_train.txt")
trainLabel <- read.table("./train/y_train.txt")

testData <- read.table("./test/X_test.txt")
testLabel <- read.table("./test/y_test.txt")

# Loading the activity labels
activityLabelData <- read.table("./activity_labels.txt")
colnames(activityLabelData) <- c("labelID","labelName")

columnNames <- readLines("./features.txt")
colnames(trainData) <- make.names(columnNames)
colnames(testData) <- make.names(columnNames)
colnames(trainLabel) <- "activityLabel"
colnames(testLabel) <- "activityLabel"

# Checking the number of rows in trainData, trainLabel, testData, testLabel
# before combine.
nrow(trainData);nrow(trainLabel);nrow(testData);nrow(testLabel)

# Merging trainLabel and trainData
trainDataFinal <- cbind(trainLabel,trainData)

# Merging testLabel and testData
testDataFinal <- cbind(testLabel,testData)

# Merging the training and the test datasets to create one data set(totalData)
totalData <- rbind(trainDataFinal, testDataFinal)

# Extracting only the measurements on the mean and std for each measurement
finalData <- totalData[grep("activityLabel|mean\\.|std\\.",colnames(totalData))]

# Substitute the activity names in finalData from activityLabelData
for(i in seq_len(nrow(activityLabelData))) {
        finalData$activityLabel[finalData$activityLabel == i] <- activityLabelData$labelName[i]
}

# Creating the average dataset (averageData) for each activity and each subject.
averageData <- aggregate(finalData[, 2:ncol(finalData)],list(finalData$activityLabel), mean,na.action=na.omit)

write.table(averageData,file = "tidyDataSet.txt",row.names = FALSE)