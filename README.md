# Data Cleaning Project (Human Activity Recognition)

## What this project is about

This project is all about taking a real dataset and turning it into something clean and usable.

The data comes from a study where people wore smartphones while doing everyday activities like walking, sitting, and standing. The phone recorded movement using sensors, and all of that raw data is what we’re working with here.

The goal was simple: clean it up, organize it properly, and create a tidy dataset that can actually be used for analysis.

---

## What’s in this repository

* **GroupWork.R** – the script that does all the work
* **tidy_data.txt** – the final cleaned dataset (plain text)
* **tidy_data.csv** – same dataset in CSV format
* **CodeBook.md** – explains the variables and what is done to the data
* **README.md** – about the script

---

## What the script actually does

### 1. Loads packages

It uses `dplyr` and `tidyr`.
If you don’t have them installed, the script will install them for you.

---

### 2. Finds the data

The script looks for the dataset folder:

* `UCI HAR Dataset`
* or `data/UCI HAR Dataset`

If it’s not there, it’ll stop and tell you.

---

### 3. Combines everything

The dataset comes split into training and test sets.
Those are merged into one big dataset so we can work with everything at once.

---

### 4. Keeps only what we need

There are a lot of variables, but we only keep the ones related to:

* mean
* standard deviation

This keeps things focused and manageable.

---

### 5. Makes activity names readable

Instead of numbers like `1, 2, 3`, the script replaces them with actual activity names like:

* WALKING
* SITTING
* LAYING

Much easier to understand.

---

### 6. Cleans up variable names

The original variable names are… not great.

So the script:

* expands abbreviations (like `t` → `time`, `f` → `frequency`)
* replaces things like `Acc` with `Accelerometer`
* labels axes clearly (`X`, `Y`, `Z`)
* removes weird symbols

The result is names that are long, but actually readable.

---

### 7. Creates the tidy dataset

This is the main goal.

The script creates a new dataset where:

* each row = one subject doing one activity
* each value = the **average** of that measurement

So instead of tons of repeated measurements, you get a clean summary.

---

### 8. Saves the results

The final dataset is saved as:

* `tidy_data.txt`
* `tidy_data.csv`

---

## How to run it

1. Download and unzip the dataset
2. Put the folder in your working directory
3. Open R or RStudio
4. Run:

```r
source("GroupWork.R")
```

That’s it — the script handles the rest.

---

## What you end up with

A tidy dataset that:

* is easy to read
* is easy to analyze
* follows tidy data principles

Each row represents a subject and activity combination, and each column is an averaged measurement.

---

## Final notes

* If the script can’t find the dataset, check the folder name and location
* The cleaned variable names are descriptive
* This dataset is ready for analysis, visualization, or modeling

---

## Authors

Kaden Dixon, Tommy Alleca
