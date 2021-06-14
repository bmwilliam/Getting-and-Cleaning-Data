The run_analysis.R script performs the following steps:

## 1. Loads UCI HAR Dataset to variables
- Training Data (X_train.txt) downloaded and extracted to trainData
- Trainging Labels (y_train.txt) downloaded and extracted to trainLabel
- Test Data (X_test.txt) downloaded and extracted to testData
- Test Labels (y_test.txt) downloaded and extracted to testLabel
- Activity label info (activity_labels.txt) downloaded and extracted to activityLabelData
- The feature name (features.txt) extracted to columnNames
- Updates the column names of trainData/testData with columnNames
- Updates the column names of trainLabel/testLabel with "activityLabel"

## 2. Checks the datasets before merging
- Checking the number of rows in trainData, trainLabel, testData, testLabel

##3. Meerges the training and the test sets into one data set
- Combines trainLabel and trainData into trainDataFinal
- Combines testLabel and testData into testDataFinal
- Merges trainDataFinal and testDataFinal into totalData (total size: 10299)

## 4. Extracts only the measurements on the mean and standard deviation for each measuremnt
- Selects the columnes of totalData containing the following names: "activityLabel", "mean.", "std."
- Creates finalData with mean and std columns

## 5. Uses descriptive activity names in the data set
- Substitures the activity names in finalData by matching finalData$activityLabel with activityLabelData$labelID

## 6. Creates the average dataset for each activity and subject
- Uses aggregate function to compute mean values of each features per activity, and create averageData
- Write averageData into text file (tidyDataSet.txt)
