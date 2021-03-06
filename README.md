# Getting and Cleaning Data Course Project

The goal is to prepare tidy data that can be used for later analysis. 
The following is required to submit: 
  1) a tidy data set as described below
  2) a link to a Github repository with your script for performing the analysis
  3) a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data called CodeBook.md. 

This README.md in the repo with scripts explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

run_analysis.R does the following: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

==================================================================

This repo includes the following files:
- 'README.md'
- 'run_analysis.R' : R script for performing the analysis
- 'tidyDataSet.txt' : text file containing tidy data set created by run_analysis.R script
- 'CodeBook.md' : data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
