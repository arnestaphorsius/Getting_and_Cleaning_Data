Getting_and_Cleaning_Data
=========================

This repository holds the required files for the project of the Coursera course 'Getting and Cleaning Data'
-------------------------

In order to run the analysis:
* Check out the repository
* Unzip the data in the same directory
* Make sure the data directory is there, along with 4 R scripts 
* Set your R working directory to the folder containing the scripts
* Make sure you have the 'plyr' and 'dplyr' packages installed
* Run 'run_analysis.R'

The main script run_analysis.R will use the other 3 scripts to complete the analysis.
* read_data.R reads in the data of the different sets and combines them into one
* add_labels.R uses the lookup files to add labels to features and activities
* calc_avgs.R takes the data and creates the final tidy data set.