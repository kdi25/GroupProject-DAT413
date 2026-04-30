# Human Activity Recognition Data Cleaning Project

## Overview

This is a group project focused on **data cleaning and tidy data preparation** using **Human Activity Recognition Using Smartphones Dataset**.

The dataset contains accelerometer and gyroscope measurements from a Samsung Galaxy S smartphone worn by subjects performing multiple  activities. The goal is to turn the raw dataset into a **clean and tidy dataset** applicable for further projects or analysis.

---

## Repository

- `GroupWork.R` - Main R script that performs all data processing  
- `tidy_data.txt` - Final tidy dataset (SSV format)  
- `tidy_data.csv` - Final tidy dataset (CSV format)  
- `CodeBook.md` - Thorough description of variables and transformations
- `README.md` - Project documentation

---

## Setup

- Download `UCI HAR Dataset` from https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones
- Extract the dataset
- Place the dataset in you R working directory
  
---

## Requirements
- R version 3.6+ recommended

---

## How to Use
- Setup the dataset as shown above
- Open `GroupWork.R` in RStudio or R console
- Run the script
- Output files `tidy_data.txt` and `tidy_data.csv` will be stored in your working directory

---

## Functionality

### Load Required Libraries
- Uses `dplyr` and `tidyr`
- Automatically installs them if missing

---

### Load Dataset
- Checks dataset directory (`UCI HAR Dataset`)
- Loads:
  - Feature names (`features.txt`)
  - Activity labels (`activity_labels.txt`)
  - Training data (`train/`)
  - Test data (`test/`)

---

### Merge Training and Test Sets
- Combines:
  - Subject data
  - Activity labels
  - Feature measurements  
- Uses `rbind()` and `cbind()` to create one dataset

---

### Store Mean and Standard Deviation Measurements
- Stores only variables containing:
  - `mean()`
  - `std()`

---

### Apply Activity Names
- Replaces activity IDs with names:
  - WALKING  
  - WALKING_UPSTAIRS  
  - WALKING_DOWNSTAIRS  
  - SITTING  
  - STANDING  
  - LAYING  

---

### Label Dataset with Descriptive Variable Names
- Cleans variable names:
  - `t` -> `time`
  - `f` -> `frequency`
  - `Acc` -> `Accelerometer`
  - `Gyro` -> `Gyroscope`
  - `Mag` -> `Magnitude`
- Removes special characters and cleans names

---

### Create Final Tidy Dataset
- Groups data by:
  - Subject
  - Activity
- Computes the **mean of each variable**
- Produces an independent tidy dataset

---

## Output

- `tidy_data.txt` - Final tidy dataset in SSV format
- `tidy_data.csv` - Final tidy dataset in CSV format (Python, Excel, or R use)

---

## Credits
- Dataset: UCI Machine Learning Repository
- Original expirement by Smartlab

---

## Authors
- Tommy Alleca
- Kaden Dixon
