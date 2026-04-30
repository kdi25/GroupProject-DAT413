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

## Functionality

GroupWork.R` performs the following:

### 1. Load Required Libraries
- Uses `dplyr` and `tidyr`
- Automatically installs them if missing

---

### 2. Load Dataset
- Checks dataset directory (`UCI HAR Dataset`)
- Loads:
  - Feature names (`features.txt`)
  - Activity labels (`activity_labels.txt`)
  - Training data (`train/`)
  - Test data (`test/`)

---

### 3. Merge Training and Test Sets
- Combines:
  - Subject data
  - Activity labels
  - Feature measurements  
- Uses `rbind()` and `cbind()` to create one dataset

---

### 4. Extract Mean and Standard Deviation Measurements
- Stores only variables containing:
  - `mean()`
  - `std()`

---

### 5. Apply Descriptive Activity Names
- Replaces activity IDs with names:
  - WALKING  
  - WALKING_UPSTAIRS  
  - WALKING_DOWNSTAIRS  
  - SITTING  
  - STANDING  
  - LAYING  

---

### 6. Label Dataset with Descriptive Variable Names
- Cleans variable names:
  - `t` → `time`
  - `f` → `frequency`
  - `Acc` → `Accelerometer`
  - `Gyro` → `Gyroscope`
  - `Mag` → `Magnitude`
- Removes special characters and improves readability

---

### 7. Create Final Tidy Dataset
- Groups data by:
  - Subject
  - Activity
- Computes the **mean of each variable**
- Produces an independent tidy dataset

---

## Output

### `tidy_data.txt`
- SSV format dataset
- Final tidy dataset

### `tidy_data.csv`
- CSV format dataset for Python, Excel, or R use

---

## How to use

### 1. Download dataset
Place the dataset in your working directory:
